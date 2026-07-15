@echo off
chcp 949 >nul
cd /d "%~dp0"
echo [1/3] 바탕화면 대시보드 파일을 index.html로 복사...
copy /y "%USERPROFILE%\Desktop\고객센터 대시보드.html" "index.html" >nul
echo [2/3] 커밋...
git add -A
git commit -m "대시보드 업데이트 %date% %time%"
echo [3/3] GitHub 푸시...
git push
echo.
echo 완료! 1~2분 후 https://eloyyang.github.io/cs-dashboard/ 에 반영됩니다.
pause
