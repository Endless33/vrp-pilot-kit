#!/usr/bin/env bash

set -euo pipefail

echo "========================================"
echo "VRP Pilot Environment Preparation"
echo "========================================"

echo
echo "[1/7] Checking operating system..."
uname -a

echo
echo "[2/7] Checking date and time..."
date

echo
echo "[3/7] Creating pilot directories..."

mkdir -p pilot-workspace
mkdir -p pilot-workspace/logs
mkdir -p pilot-workspace/evidence
mkdir -p pilot-workspace/reports
mkdir -p pilot-workspace/tmp

echo
echo "[4/7] Verifying required commands..."

for cmd in bash date mkdir hostname uname; do
    if command -v "$cmd" >/dev/null 2>&1; then
        echo "OK: $cmd"
    else
        echo "WARNING: $cmd not found"
    fi
done

echo
echo "[5/7] Recording environment..."

hostname > pilot-workspace/environment.hostname
uname -a > pilot-workspace/environment.kernel
date > pilot-workspace/environment.time

echo
echo "[6/7] Preparing evidence directory..."

touch pilot-workspace/evidence/.keep

echo
echo "[7/7] Environment preparation complete."

echo
echo "Workspace:"
echo "pilot-workspace/"
echo
echo "Preparation finished successfully."