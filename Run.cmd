@ECHO OFF

dotnet build

@REM https://docs.microsoft.com/en-us/cpp/c-language/parsing-c-command-line-arguments
"bin\Debug\net6.0\Command Line.exe" "a b c" d e
"bin\Debug\net6.0\Command Line.exe" "ab\"c" "\\" d
"bin\Debug\net6.0\Command Line.exe" a\\\b d"e f"g h
"bin\Debug\net6.0\Command Line.exe" a\\\"b c d
"bin\Debug\net6.0\Command Line.exe" a\\\\"b c" d e
"bin\Debug\net6.0\Command Line.exe" a"b"" c d

@REM https://daviddeley.com/autohotkey/parameters/parameters.htm#WINCRULES
"bin\Debug\net6.0\Command Line.exe" a ""b c"" d
"bin\Debug\net6.0\Command Line.exe" a """b c""" d
"bin\Debug\net6.0\Command Line.exe" a """"b c"""" d
"bin\Debug\net6.0\Command Line.exe" "a ""b c"" d"
"bin\Debug\net6.0\Command Line.exe" "a """b c""" d"
"bin\Debug\net6.0\Command Line.exe" "a """"b c"""" d"
