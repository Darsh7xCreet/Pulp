@echo off
REM Quick Start Script for Windows
REM Govind Metalloys Website Development

cls
echo ================================
echo Govind Metalloys Website
echo Quick Start Script (Windows)
echo ================================
echo.
echo This script will help you set up and run the website.
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Node.js is not installed!
    echo Please install Node.js from https://nodejs.org/
    echo.
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('node --version') do set NODE_VERSION=%%i
for /f "tokens=*" %%i in ('npm --version') do set NPM_VERSION=%%i

echo ✅ Node.js found: %NODE_VERSION%
echo ✅ npm found: %NPM_VERSION%
echo.

echo 📦 Installing dependencies...
echo This may take a few minutes...
echo.

call npm install

if errorlevel 1 (
    echo ❌ Installation failed. Please check your internet connection.
    echo.
    pause
    exit /b 1
)

cls
echo.
echo ✅ Installation complete!
echo.
echo 🚀 Starting development server...
echo The website will open in your browser automatically.
echo.
echo 📍 Development URL: http://localhost:5173
echo.
echo Press Ctrl+C to stop the server.
echo.
echo ================================
echo.

call npm run dev

pause
