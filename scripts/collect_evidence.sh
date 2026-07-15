#!/usr/bin/env bash

set -euo pipefail

echo "========================================"
echo "VRP Pilot Evidence Collection"
echo "========================================"

WORKSPACE="pilot-workspace"
OUTPUT_DIR="$WORKSPACE/evidence"

mkdir -p "$OUTPUT_DIR"

echo
echo "[1/6] Recording collection time..."
date > "$OUTPUT_DIR/collection_time.txt"

echo
echo "[2/6] Recording system information..."
hostname > "$OUTPUT_DIR/hostname.txt"
uname -a > "$OUTPUT_DIR/system_info.txt"

echo
echo "[3/6] Collecting available reports..."

find "$WORKSPACE" \
    -type f \
    \( -name "*.md" -o -name "*.json" -o -name "*.log" \) \
    2>/dev/null > "$OUTPUT_DIR/artifact_list.txt"

echo
echo "[4/6] Generating checksums..."

if command -v sha256sum >/dev/null 2>&1; then
    find "$WORKSPACE" \
        -type f \
        ! -path "$OUTPUT_DIR/*" \
        -exec sha256sum {} \; \
        > "$OUTPUT_DIR/checksums.sha256"
else
    echo "sha256sum not available." > "$OUTPUT_DIR/checksums.sha256"
fi

echo
echo "[5/6] Creating evidence summary..."

cat > "$OUTPUT_DIR/evidence_summary.txt" <<EOF
VRP Pilot Evidence Collection

Collection completed successfully.

Evidence directory:
$OUTPUT_DIR

Generated:
$(date)
EOF

echo
echo "[6/6] Evidence collection complete."

echo
echo "Artifacts saved to:"
echo "$OUTPUT_DIR"

echo
echo "Done."