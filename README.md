# Instalador de impressora em REDE

<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-original.svg" width="40" height="40" />
          
**Olá, meu nome é Joadison** e este é o meu Repositorio de ✨ _Instalador de impressora em REDE_ ✨.

# Configuração de Bash

![image](https://github.com/Joadison/Instala-o-de-impressora-REDE/assets/32674418/e3e103aa-dbfc-4581-8bf0-c9eb7207d271) 

1º Instala os Drivers da impressora.

`cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prndrvr.vbs" -a -m "MODELO" -v 3 -e "x64" -i  "ARQUIVO.INF"`

2º Aplica o IP na impressora em REDE.

`cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnport.vbs" -a -r "%ip%" -h %ip%`

3º Agora o comando vai indicar o nome para a Impressora e indicar o IP.

`cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnmngr.vbs" -a -p "%name%" -m "RICOH SP 4510SF PCL 6" -r %ip%`

4º Difine a impressora como Padrão.

`RUNDLL32.EXE PRINTUI.DLL, PrintUIEntry /y /n "%name%"`

5º Imprimir folha de TESTE.

`cscript "C:\Windows\System32\Printing_Admin_Scripts\pt-BR\prnqctl.vbs" -e -p "%name%"`

# FIM
