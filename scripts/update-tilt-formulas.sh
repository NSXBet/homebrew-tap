#!/bin/bash
#
# Refresh tilt formulas from NSXBet/tilt GitHub releases.
#
# Runs in the homebrew-tap repo (scheduled workflow or manually). Needs no
# cross-repo secrets: NSXBet/tilt is public; GH_TOKEN (github.token in
# Actions) is only used for API rate limits.
#
# - tip release (prerelease, tag `tip`)  -> Formula/tip.rb             (command: tip)
# - latest tagged release (v*)           -> Formula/tilt-dev.rb        (command: tilt)
# - every tagged release                 -> Formula/tilt-dev@<ver>.rb  (keg-only pins)

set -euo pipefail

REPO="NSXBet/tilt"
: "${GH_TOKEN:?"GH_TOKEN required (github.token in Actions)"}"

cd "$(dirname "$0")/.."
mkdir -p Formula

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

derive_version() {
  awk 'NR == 1 { print $2 }' "$1" |
    sed -E 's/^tilt\.(.*)\.mac\.arm64\.tar\.gz$/\1/'
}

# --- tip (nightly) ----------------------------------------------------------
if gh release view tip --repo "$REPO" >/dev/null 2>&1; then
  gh release download tip --repo "$REPO" --pattern 'checksums.txt' --dir "$tmp/tip" --clobber
  version="$(derive_version "$tmp/tip/checksums.txt")"
  bash scripts/generate-formula.sh --name tip --version "$version" --tag tip \
    --binary tip --checksums "$tmp/tip/checksums.txt" > Formula/tip.rb
  echo "tip -> $version"
fi

# --- tagged releases ---------------------------------------------------------
tags="$(gh api "repos/$REPO/releases?per_page=100" --paginate \
  --jq '[.[] | select(.draft == false and .prerelease == false and (.tag_name | test("^v[0-9]")))] | reverse | .[].tag_name')"

latest=1
for tag in $tags; do
  version="${tag#v}"
  gh release download "$tag" --repo "$REPO" --pattern 'checksums.txt' --dir "$tmp/$tag" --clobber
  bash scripts/generate-formula.sh --name "tilt-dev@${version}" --version "$version" --tag "$tag" \
    --binary tilt --keg-only --checksums "$tmp/$tag/checksums.txt" > "Formula/tilt-dev@${version}.rb"
  if [[ $latest -eq 1 ]]; then
    bash scripts/generate-formula.sh --name tilt-dev --version "$version" --tag "$tag" \
      --binary tilt --checksums "$tmp/$tag/checksums.txt" > Formula/tilt-dev.rb
    echo "tilt-dev -> $version"
    latest=0
  fi
done

echo "Formulas refreshed."
