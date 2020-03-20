@ECHO OFF

call utf8

if ["%~1"] == ["--help"] (
	goto:help
)

if ["%~1"] == ["-h"] (
	goto:help
)

if ["%~1"] == [""] (
	goto:help
)

goto:inicio


:help
echo usage: download [LINK] [NAME]
goto:eof


:inicio
set o=-O "%~2"
if ["%~2"] == [""] (
	set o=
)

wget --continue --no-check-certificate -N --content-disposition "%~1" %o%
