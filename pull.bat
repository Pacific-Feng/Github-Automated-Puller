@echo off

:: 檢查Git是否已經安裝
where git > nul 2>&1
if %errorlevel% neq 0 (
    echo Git未安裝或未在系統環境變數中設置。請安裝Git並重新啟動腳本。
    pause
    exit /b
)

:: 獲取當前工作目錄
set "current_dir=%CD%"

:: 使用Git Bash執行pull.sh腳本（前提是安裝了Git Bash）
"C:\Program Files\Git\bin\bash.exe" -c "cd \"%current_dir%\" && ./pull.sh"

:: 若使用Git for Windows，則應使用下面的指令來執行pull.sh腳本
:: "%USERPROFILE%\AppData\Local\Programs\Git\git-bash.exe" -c "cd \"%current_dir%\" && ./pull.sh"

:: 執行完畢後自動關閉命令視窗
exit
