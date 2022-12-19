:: [This is an alias of pnvim.bat]
::
:: Start in portable mode
@echo off
SETLOCAL EnableDelayedExpansion

:: [User Environment Space]
:: User Variables
SET user=%USERNAME%
SET datafldr=data\%user%
SET progfldr=path\to\neovim\application\folder\root
SET datapath=%progfldr%\%datafldr%
SET personalfldr=%datapath%\nvim\vimfiles

:: Prepare Workspace
:: Create userspace portable data folder if folder doesnt exists
IF NOT EXIST "%datapath%" (
	:: If folder does not exist
	mkdir "%datapath%"
)
IF NOT EXIST "%progfldr%" (
	:: If folder does not exist
	mkdir "%progfldr%"
)

:: [Local Variables]
SET other_paths=%progfldr%\Neovim\bin;

:: [Set Environment Variables]
:: For Portability

:: Change Roaming APPDATA folder to another directory of your choice
SET PATH=%other_paths%;%PATH%
SET APPDATA=%datapath%
SET LOCALAPPDATA=%datapath%

:: [Get Environment Variables]

:: [Program Variables]
:: #EDIT THIS
:: NOTE
::	- Electron applications require the argument '--no-sandbox' to run on your Network Shared Drive/NAS/Network File Sharing Server
SET PROG_FLDR=%progfldr%\Neovim\bin
SET PROG_FILE=nvim.exe
SET PROG_PARAMS=%*
SET PROG_RUN="%PROG_FLDR%\%PROG_FILE%" %PROG_PARAMS%

:: Main (Processing)
echo User : %user%
echo System Path : %PATH%
echo APPDATA (Roaming) : %APPDATA%
echo Running : %PROG_RUN%

echo/

%PROG_RUN% && (
	echo %PROG_RUN% ran successfully.
) || (
	echo error running %PROG_RUN%. 
)

echo/

:: Output
pause