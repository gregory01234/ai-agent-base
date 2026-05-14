#!/usr/bin/env bash

set -e

REPO="https://github.com/gregory01234/ai-agent-base.git"
DIR="$HOME/ai-agent-base"
IMAGE="ai-agent-base:latest"

echo "🧠 AI Agent Base bootstrap starting..."

# 1. clean safe
if [ -d "$DIR" ]; then
  echo "🧹 Removing old directory..."
  rm -rf "$DIR"
fi

# 2. clone fresh
echo "📥 Cloning repo..."
git clone "$REPO" "$DIR"

cd "$DIR"

# 3. build image
echo "🐳 Building Docker image..."
sudo docker build -t "$IMAGE" .

echo "✅ DONE"
echo "👉 Image ready: $IMAGE"
