@echo off
chcp 65001 >nul
echo ========================================
echo PDF Editor をオフラインで起動中...
echo ========================================
echo.
cd /d %~dp0

if not exist dist (
    echo [1/3] dist フォルダが見つかりません。ビルドを実行します...
    call npm run build
    if errorlevel 1 (
        echo ビルドに失敗しました。
        pause
        exit /b 1
    )
    echo ビルドが完了しました。
    echo.
)

echo [2/3] ローカルサーバーを起動中...
echo.
echo ========================================
echo ブラウザで http://localhost:5000 が開きます
echo サーバーを停止するには、このウィンドウで Ctrl+C を押してください
echo ========================================
echo.

timeout /t 2 /nobreak >nul
start http://localhost:5000

echo [3/3] サーバーを起動しました...
npm run preview
pause

