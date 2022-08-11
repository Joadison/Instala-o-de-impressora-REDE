@echo off
@title CATI - CENTRAL DE ATENDIMENTO EM TI
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::: CATI - CENTRAL DE ATENDIMENTO EM TI
echo ::: PROGRAMA.: IMPRESSORA
echo ::: VERSAO...: 1.0.1
echo ::: DATA.....: 26/01/2022
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo === CRIANDO PASTA SCAN ===
MD "C:\Scan"
icacls "C:\scan" /grant Todos:(OI)(CI)F /T
net share scan="C:\scan"
set /p ip= Qual e o IP da impressora?
set /p name= Qual e o Nome?
echo ----------------------------
echo . Impressora
echo . 1 Ricoh
echo . 2 Lexmark
echo ----------------------------
set /p imp= QUAL E O Impressora ?
if %imp% equ 1 goto opcao1
if %imp% equ 2 goto opcao2
:opcao1
echo Driver
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prndrvr.vbs" -a -m "RICOH SP 4510SF PCL 6" -v 3 -e "x64" -i  "OEMSETUP.INF"
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prndrvr.vbs" -a -m "RICOH SP 4510SF PCL 6" -v 3 -e "x64"
echo IP
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnport.vbs" -a -r "%ip%" -h %ip%
echo Configuracao
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnmngr.vbs" -a -p "%name%" -m "RICOH SP 4510SF PCL 6" -r %ip%
echo Defenir
RUNDLL32.EXE PRINTUI.DLL, PrintUIEntry /y /n "%name%"
echo test
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnqctl.vbs" -e -p "%name%"
pause
exit
:opcao2
echo Driver
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prndrvr.vbs" -a -m "Lexmark MX620 Series XL" -v 3 -e "x64" -i "LMU03p40.inf"
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prndrvr.vbs" -a -m "Lexmark MX620 Series XL" -v 3 -e "x64"
echo IP
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnport.vbs" -a -r "%ip%" -h %ip%
echo Configuracao
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnmngr.vbs" -a -p "%name%" -m "Lexmark MX620 Series XL" -r %ip%
echo Defenir
RUNDLL32.EXE PRINTUI.DLL, PrintUIEntry /y /n "%name%"
echo test
cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnqctl.vbs" -e -p "%name%"
pause
exit
