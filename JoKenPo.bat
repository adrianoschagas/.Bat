@echo off
chcp 65001
title Jo-Ken-Po Lagarto e Spock
mode 100,30

:inicio
title Jo-Ken-Po Lagarto e Spock - Menu
cls
echo.
echo ╔══════════════════════════════════════════════╗
echo ║      SEJA BEM VINDO AO JO-KEN-PO-LI-SPO      ║
echo ╠══════════════════════════════════════════════╣
echo ║ [1] JOGAR                                    ║
echo ║ [2] COMO JOGAR                               ║
echo ║ [3] SAIR                                     ║         
echo ╚══════════════════════════════════════════════╝
echo.

set /p op=╠ DIGITE SUA OPÇÃO: 
if %op%  equ  1 (goto:apresentacao)
if %op%  equ  2 (goto:regras)
if %op%  equ  3 (exit) else (
echo.
echo ╔══════════════════════════════════════╗
echo ║            Opção Inválida            ║
echo ╚══════════════════════════════════════╝
echo.
goto:inicio)

:regras
title Jo-Ken-Po Lagarto e Spock - Como jogar
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                COMO JOGAR JO-KEN-PO LAGARTO E SPOCK                  ║
echo ╠══════════════════════════════════════════════════════════════════════╣
echo ║ EMPATE                                                               ║
echo ║    Caso os ataques os ataques sejam iguais, a rodada será registrada ║
echo ║    como empate.                                                      ║
echo ╠══════════════════════════════════════════════════════════════════════╣
echo ║ PEDRA                                                                ║
echo ║    VANTAGEM: Pedra quebra tesoura e esmaga lagarto.                  ║
echo ║    FRAQUEZA: Spock vaporiza a pedra e papel cobre a pedra.           ║
echo ╠══════════════════════════════════════════════════════════════════════╣
echo ║ PAPEL                                                                ║
echo ║    VANTAGEM: Papel cobre pedra e refuta Spock.                       ║
echo ║    FRAQUEZA: Lagarto come papel e tesoura corta o papel.             ║
echo ╠══════════════════════════════════════════════════════════════════════╣
echo ║ TESOURA                                                              ║
echo ║    VANTAGEM: Corta papel e decapita o lagarto.                       ║
echo ║    FRAQUEZA: É quebrada pela pedra e esmagada pelo spock.            ║
echo ╠══════════════════════════════════════════════════════════════════════╣
echo ║ LAGARTO                                                              ║
echo ║    VANTAGEM: Come o papel e envenena o Spock.                        ║
echo ║    FRAQUEZA: Tesoura decapita o lagarto e pedra esmaga lagarto.      ║
echo ╠══════════════════════════════════════════════════════════════════════╣
echo ║ SPOCK                                                                ║
echo ║    VANTAGEM: Spock vaporiza pedra e derrete a tesoura.               ║
echo ║    FRAQUEZA: Papel refuta o spock e lagarto envenena o Spock.        ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo. 
set /p resp=╠ Deseja ir a tela inicial? [S/N]: 
if /i %resp% == s (goto:inicio)
if /i %resp% == n (exit) else (
echo Responda somente com S ou N
goto:regras
)

:apresentacao
title Jo-Ken-Po Lagarto e Spock - Apresentação
cls
set /p nome=╠ Digite o seu nome de usuário: 
echo.
echo ╔══════════════════════════════════════╗
echo          Seja bem vindo %nome%         
echo ╚══════════════════════════════════════╝
echo.
set /p oponente=╠ Digite o nome de seu oponente: 
echo.
echo ╔══════════════════════════════════════╗
echo        BATALHA DO DIA NO COLISEU      
echo            %nome% VS %oponente%        
echo ╚══════════════════════════════════════╝
echo.
set /a vitorias=0
set /a derrotas=0
set /a empates=0
pause
goto:selecione_ataque

:selecione_ataque
title Jo-Ken-Po Lagarto e Spock - Batalha
cls
echo.
echo ╔══════════════════════════════════════╗
echo ║         ESCOLHA SEU ATAQUE           ║
echo ╠══════════════════════════════════════╣
echo ║ [1] PEDRA                            ║                  
echo ║ [2] PAPEL                            ║
echo ║ [3] TESOURA                          ║
echo ║ [4] LAGARTO                          ║
echo ║ [5] SPOCK                            ║
echo ╚══════════════════════════════════════╝
echo.
set /p ataque=╠ SELECIONE O SEU ATAQUE: 

if %ataque% equ 1 (
cls
echo.
echo ╔══════════════════════════════════════╗
echo ║         Você escolheu PEDRA!         ║
echo ╚══════════════════════════════════════╝
echo. 

) else if %ataque% equ 2 (
cls
echo.
echo ╔══════════════════════════════════════╗
echo ║         Você escolheu PAPEL!         ║
echo ╚══════════════════════════════════════╝
echo.

) else if %ataque% equ 3 (
cls
echo.
echo ╔══════════════════════════════════════╗
echo ║        Você escolheu TESOURA!        ║
echo ╚══════════════════════════════════════╝
echo.

) else if %ataque% equ 4 (
cls
echo.
echo ╔══════════════════════════════════════╗
echo ║        Você escolheu LAGARTO!        ║
echo ╚══════════════════════════════════════╝
echo.

) else if %ataque% equ 5 (
cls
echo.
echo ╔══════════════════════════════════════╗
echo ║         Você escolheu SPOCK!         ║
echo ╚══════════════════════════════════════╝
echo.

) else (
echo.
echo ╔══════════════════════════════════════╗
echo ║            Opção Inválida            ║
echo ╚══════════════════════════════════════╝
echo.
pause
goto:selecione_ataque)

set /a escolha=(%random% %%5) + 1
if %ataque%==%escolha% (
set /a empates+=1
echo ╔═══════════════════════════════════════╗
echo ║         ºººHOUVE UM EMPATEººº         ║
echo ╠═══════════════════════════════════════╣
echo ║    AMBOS ESCOLHERAM O MESMO ATAQUE!   ║
echo ║                                       ║
echo ╚═══════════════════════════════════════╝
echo.

pause
) 

if %ataque%==1 (
if %escolha%==3 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║         PEDRA QUEBRA TESOURA         ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==1 (
if %escolha%==4 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║         PEDRA ESMAGA LAGARTO         ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==2 (
if %escolha%==1 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║          PAPEL COBRE PEDRA           ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==2 (
if %escolha%==5 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║          PAPEL REFUTA SPOCK          ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==3 (
if %escolha%==2 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║          TESOURA CORTA PAPEL         ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
)) 

if %ataque%==3 (
if %escolha%==4 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║       TESOURA DECAPITA LAGARTO       ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==4 (
if %escolha%==2 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║         LAGARTO COME O PAPEL         ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==4 (
if %escolha%==5 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║        LAGARTO ENVENENA SPOCK        ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==5 (
if %escolha%==2 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║        SPOCK VAPORIZA A PEDRA        ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==5 (
if %escolha%==3 (
set /a vitorias+=1
echo ╔══════════════════════════════════════╗
echo ║          ºººVOCÊ GANHOUººº           ║
echo ╠══════════════════════════════════════╣
echo ║        SPOCK DERRETE TESOURA         ║
echo ║                                      ║
echo ╚══════════════════════════════════════╝
echo.
pause
))

if %ataque%==1 (
if %escolha%==2 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo    Você escolheu PEDRA e %oponente% PAPEL
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.
pause
))

if %ataque%==1 (
if %escolha%==5 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo    Você escolheu PEDRA e %oponente% SPOCK
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.
pause
))

if %ataque%==2 (
if %escolha%==3 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo    Você escolheu PAPEL e %oponente% TESOURA
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.
pause
))

if %ataque%==2 (
if %escolha%==4 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo   Você escolheu PAPEL e %oponente% LAGARTO
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.
pause
))

if %ataque%==3 (
if %escolha%==5 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo   Você escolheu PAPEL e %oponente% TESOURA
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.
pause
))

if %ataque%==4 (
if %escolha%==1 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo   Você escolheu LAGARTO e %oponente% PEDRA
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.

pause
))

if %ataque%==4 (
if %escolha%==3 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo   Você escolheu LAGARTO e %oponente% TESOURA
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.
pause
))

if %ataque%==5 (
if %escolha%==2 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo    Você escolheu SPOCK e %oponente% PAPEL
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.

pause
))

if %ataque%==5 (
if %escolha%==4 (
set /a derrotas+=1
echo ╔════════════════════════════════════════════╗
echo ║             ºººVOCÊ PERDEUººº              ║
echo ╠════════════════════════════════════════════╣
echo    Você escolheu SPOCK e %oponente% LAGARTO
echo ║                                            ║
echo ╚════════════════════════════════════════════╝
echo.
pause
))

cls
echo.
echo ╔══════════════════════════════════════╗
echo ║       ºººREGISTRO DE BATALHAººº      ║
echo ╠══════════════════════════════════════╣
echo      Vitorias: %vitorias%                
echo      Derrotas: %derrotas%                
echo      Empates: %empates%                                                 
echo ╚══════════════════════════════════════╝
echo.
goto:novamente

:novamente
title Jo-Ken-Po Lagarto e Spock - Jogar novamente?
set /p novamente=╠ DESEJA JOGAR NOVAMENTE? [S/N]
if /i %novamente% == s ((goto:selecione_ataque) 
) else if /i %novamente% == n ((exit)
) else (
echo Responda somente S ou N
goto:novamente
)

