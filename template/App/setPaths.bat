@echo off
:: Copyright 2014-2016 John de Murga - Licensed under the GPLv2

set PAL_DataDir=%~dp0\..\Data
set PAL_AppDir=%~dp0\..\App

:: Taken from the Launcher.ini
set ATOM_HOME=%PAL_DataDir%\AtomProfile

set HOME=%PAL_AppDir%\..\..\_home

set NPM_CONFIG_prefix=%HOME%\npm
set NPM_CONFIG_userconfig=%HOME%\.npmrc
set NPM_CONFIG_init-module=%HOME%\.npm-init.js
set NPM_CONFIG_cache=%HOME%\npm-cache

set GOROOT=%PAL_AppDir%\..\..\go
set GOPATH=%PAL_AppDir%\..\..\_home\go
set GOBIN=%GOPATH%\bin

set MYPATH=%PAL_AppDir%
set MYPATH=%MYPATH%;%HOME%\npm
set MYPATH=%MYPATH%;%PAL_AppDir%\Atom\resources\app\apm\bin
set MYPATH=%MYPATH%;%PAL_AppDir%\..\..\git\bin
set MYPATH=%MYPATH%;%PAL_AppDir%\..\..\git\cmd
set MYPATH=%MYPATH%;%PAL_AppDir%\..\..\git\usr\bin
set MYPATH=%MYPATH%;%PAL_AppDir%\..\..\meld
set MYPATH=%MYPATH%;%PAL_AppDir%\..\..\python
set MYPATH=%MYPATH%;%PAL_AppDir%\..\..\ruby\bin
set MYPATH=%MYPATH%;%PAL_AppDir%\..\..\gcc\bin
set MYPATH=%MYPATH%;%PAL_AppDir%\..\..\rust\bin
set MYPATH=%MYPATH%;%GOROOT%\bin;%GOBIN%

set PATH=%MYPATH%;%PATH%

set CPATH=%PAL_AppDir%\..\..\git\usr\local\include
