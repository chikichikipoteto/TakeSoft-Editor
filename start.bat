@echo off
chcp 65001 >nul
echo ========================================
echo PDF Editor を起動中...
echo ========================================
echo.
cd /d %~dp0

echo [1/2] 開発サーバーを起動中...
echo.
echo ========================================
echo ブラウザで http://localhost:5173 が自動的に開きます
echo サーバーを停止するには、このウィンドウで Ctrl+C を押してください
echo ========================================
echo.

timeout /t 2 /nobreak >nul
start http://localhost:5173

echo [2/2] サーバーを起動しました...
npm run dev
pause
