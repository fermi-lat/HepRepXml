rem Setting HepRepXml v0r7 in %~d0%~p0
@echo off
if NOT DEFINED CMTROOT set CMTROOT=C:\Programs\CMT\v1r18p20060301& set PATH=%CMTROOT%\%CMTBIN%;%PATH%& set CMTBIN=VisualC& if not defined CMTCONFIG set CMTCONFIG=%CMTBIN%

set cmttempfile="%TEMP%\tmpsetup.bat"
%CMTROOT%\%CMTBIN%\cmt.exe setup -bat  -pack=HepRepXml -version=v0r7 -path="%~d0%~p0..\..\.."   -no_cleanup %1 %2 %3 %4 %5 %6 %7 %8 %9 >%cmttempfile%
if exist %cmttempfile% call %cmttempfile%
if exist %cmttempfile% del %cmttempfile%
set cmttempfile=

