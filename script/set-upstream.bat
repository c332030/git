@echo off
title set-upstream

:start

echo.
set /p dir=������Ŀ¼��

echo.
set branch=
set /p branch=�������֧��master����

cls

if not defined branch (
  set branch=master
)

echo.
echo branch %branch% of  %dir%

cd /d %dir%

echo.
git branch --set-upstream-to=origin/%branch% %branch%

goto start
