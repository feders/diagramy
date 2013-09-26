@echo off
echo USAGE: generate_dot infile.dot outfile
echo    infile - filename with diagram definition
echo    outfile - 
echo    target (optional) target filename. if not specified file will be saved in current directory with original filename and extension PNG.
echo.
echo.

IF "%1"=="" GOTO Default
IF "%2"=="" GOTO DefaultFilename

echo [INFO] Diagram will be rendered to: %2
dot -Tpng -Gcharset=latin1 %1 > %2.png
goto End

:DefaultFilename

echo [INFO] Using default filename: %1.png (same as dot name)
dot -Tpng -Gcharset=latin1 %1 > %1.png
GOTO End

:Default
echo [INFO] parameters missing, check your input
GOTO End

:End
echo bye