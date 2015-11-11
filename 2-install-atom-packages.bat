@echo off
REM Copyright 2014-2015 John de Murga - Licensed under the GPLv2

echo Setting Atom up with some cool default packages

set ATOM_HOME=%~dp0\packages\Atom\Data\AtomProfile

cmd /c scripts\0-install-packages.bat

echo Calculating max path length from current after package install
call scripts\free-drive FREE_DRIVE
subst %FREE_DRIVE%: .\packages\Atom

dir /b /s %FREE_DRIVE%:\ 2>&1 | cscript /nologo .\tools\maxLen.js

cmd /c scripts\1-fix-known-issues.bat
cmd /c scripts\2-optimize-packages.bat
cmd /c scripts\3-flatten-packages.bat

echo Calculating max path length from current after package flatten
dir /b /s %FREE_DRIVE%:\ 2> nul | cscript /nologo .\tools\maxLen.js

subst %FREE_DRIVE%: /D > nul
