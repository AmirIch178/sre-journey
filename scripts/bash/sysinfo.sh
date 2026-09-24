#!/usr/bin/env bash
set -euo pipefail

echo "=== Date ==="
date
echo "=== Uptime ==="
uptime
echo "=== IP Addresses ==="
ip -brief a
echo "=== Disk Usage ==="
df -h /
echo "=== Memory ==="
free -h
echo "=== Top 5 CPU Processes ==="
ps aux --sort=-%cpu | head -6
