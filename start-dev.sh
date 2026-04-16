#!/bin/bash
# Quick Start Script for Development
echo "================================"
echo "GOVIND RECYCLERS AND METALLOYS Website"
echo "Quick Start Script"
echo "================================"
echo ""
echo "This script will help you set up and run the website."
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed!"
    echo "Please install Node.js from https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js found: $(node --version)"
echo "✅ npm found: $(npm --version)"
echo ""

# Navigate to project directory
cd "$(dirname "$0")" || exit

echo "📦 Installing dependencies..."
echo "This may take a few minutes..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Installation failed. Please check your internet connection."
    exit 1
fi

echo ""
echo "✅ Installation complete!"
echo ""
echo "🚀 Starting development server..."
echo "The website will open in your browser automatically."
echo ""
echo "📍 Development URL: http://localhost:5173"
echo ""
echo "Press Ctrl+C to stop the server."
echo ""

npm run dev
