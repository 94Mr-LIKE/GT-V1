@echo off
chcp 65001 >nul
echo ============================
echo  GT-V1 一鍵更新腳本
echo ============================
echo.

cd /d "%~dp0"

echo [1/3] 加入所有變更...
git add -A

echo [2/3] 建立 commit...
set /p MSG="請輸入 commit 訊息 (直接按 Enter 使用預設): "
if "%MSG%"=="" set MSG=Update questionnaire site

git commit -m "%MSG%"

echo [3/3] 推送到 GitHub...
git push -u origin main

echo.
echo ============================
echo  完成！GitHub Pages 將自動更新
echo ============================
pause
