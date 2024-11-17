@echo off
echo Initializing a new Node.js project and installing packages...

:: Check if Node.js is installed
node -v >nul 2>&1
if errorlevel 1 (
    echo Node.js is not installed. Please install Node.js and try again.
    pause
    exit /b
)

:: Step 1: Create package.json
echo Creating package.json...
(
    echo {
    echo     "name": "Ember Backend",
    echo     "version": "1.0.0",
    echo     "description": "",
    echo     "main": "index.js",
    echo     "scripts": {
    echo         "test": "echo \"Error: no test specified\" && exit 1"
    echo     },
    echo     "keywords": [],
    echo     "author": "",
    echo     "license": "ISC"
    echo }
) > package.json

:: Step 2: Install npm packages
echo Installing npm packages: sqlite and sqlite3...
npm install sqlite sqlite3

:: Step 3: Confirm completion
echo Installation complete!
pause
