#!/bin/bash
set -e

echo "🚀 Starting Release Drafter project setup..."

# 1. Install Node dependencies
if [ -f package.json ]; then
    echo "📦 Installing Node dependencies..."
    npm install
fi

# 2. Create .github folder if missing
mkdir -p .github

# 3. Copy Release Drafter config
if [ -f release-drafter.yml ]; then
    cp release-drafter.yml .github/release-drafter.yml
    echo "✅ Release Drafter config copied to .github/"
else
    echo "⚠️ release-drafter.yml not found. Skipping."
fi

# 4. Copy PR template
if [ -f PULL_REQUEST_TEMPLATE.md ]; then
    mkdir -p .github/PULL_REQUEST_TEMPLATE
    cp PULL_REQUEST_TEMPLATE.md .github/PULL_REQUEST_TEMPLATE/pull_request_template.md
    echo "✅ PR template copied to .github/PULL_REQUEST_TEMPLATE/"
else
    echo "⚠️ PULL_REQUEST_TEMPLATE.md not found. Skipping."
fi

# 5. Optional: Test Release Drafter (dry run)
echo "🔧 Running Release Drafter test..."
npx release-drafter --dry-run

echo "🚀 Setup complete!"
