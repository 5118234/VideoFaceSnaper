@echo off
set nowPath=%cd%
cd \
cd %nowPath%

::delete specify file(*.pdb,*.suo,*.user,*.vshost.*)
for /r %nowPath% %%i in (*.pdb,*.suo,*.user,*.vshost.*) do (del %%i)

echo ��������ʱ�ļ����

del /s /ah /f *.suo
del /s /f *.user
del /s /f *.cache
del /s /f *.keep
del /s /ah StyleCop.Cache
del /s /ah .hgignore
del /s /f *.scc
del /s /f *.vssscc
del /s /f *.vspscc
del /s /ah /f vssver2.scc

::delete specify folder(obj,bin)
cd %nowPath%
for /r %nowPath% %%i in (obj,bin) do (IF EXIST %%i RD /s /q %%i)

echo ����obj,bin�ļ������

del %nowPath%\output\*.* /s/q

echo OK
pause