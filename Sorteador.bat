@echo off
chcp 65001
title Acerte o número - Menu
mode 100,30

:inicio 
title Sorteador - Tela inicial
set /a numero=(%random% %%50) + 1
set /a tentativas=0
cls
echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║        SEJA BEM VINDO SORTEADOR DE NÚMEROS        ║
echo ╠═══════════════════════════════════════════════════╣
echo ║ [1] JOGAR                                         ║
echo ║ [2] COMO JOGAR                                    ║
echo ║ [3] SAIR                                          ║
echo ╚═══════════════════════════════════════════════════╝
echo.
set /p op= DIGITE SUA OPÇÃO: 
if %op%  equ  1 (goto:digite_nome)
if %op%  equ  2 (goto:como_jogar)
if %op%  equ  3 (exit) else (
echo.
echo ╔══════════════════════════════════════╗
echo             Opção Inválida            
echo ╚══════════════════════════════════════╝
echo.
pause
goto:inicio
)

:como_jogar
title Sorteador - Como Jogar
cls
echo.
echo ╔══════════════════════════════════════════════════════════╗
echo ║           COMO FUNCIONA O SORTEADOR DE NÚMEROS           ║
echo ╠══════════════════════════════════════════════════════════╣
echo ║ º Um número entre 01 e 50 será escolhido aleatoriamente; ║
echo ║ º Você terá 5 chances de acerta-lo, caso suas tentativas ║
echo ║   se esgotem, o jogo será finalizado, e mostrará qual    ║
echo ║   era o número do sorteio;                               ║
echo ║ º Caso não acerte e ainda tenha ao menos uma tentativa o ║
echo ║   será mostrado se o seu palpite é MAIOR ou MENOR que o  ║
echo ║   número sorteado.                                       ║
echo ║                                                          ║
echo ╚══════════════════════════════════════════════════════════╝
echo.
set /p resp= Deseja ir a tela inicial? [S/N]: 
if /i %resp% == s (goto:inicio)
if /i %resp% == n (exit) else (
echo Responda somente com S ou N
goto:como_jogar
)

:digite_nome
title Sorteador - Inserir Nome
cls
set /p nome= Digite o seu nome: 
cls
goto:cabecalho

:cabecalho
title Sorteador - Sorteio
cls
echo ╔═══════════════════════════════════════════════════╗
echo ║                   ºººººSORTEIOººººº               ║
echo ╠═══════════════════════════════════════════════════╣  
echo     NOME: %nome%                                    
echo ╠═══════════════════════════════════════════════════╣                                                                                               
goto:palpite

:palpite	 
title Sorteador - Sorteio
set /a tentativas+=1
echo    TENTATIVA Nº%tentativas%                                                                                  
set /p chute=       %nome%, digite um número entre 01 a 50: 
if %chute% == %numero% (goto:ganhou)
if %chute% gtr %numero% (
	echo ╠════════════════════════════════════════╣
	echo   O número sorteado é MENOR que %chute%.  
	echo    Por favor, tente um número menor!    
	echo ╠════════════════════════════════════════╣
	if %tentativas% equ 5 (goto:perdeu) 
	goto:palpite
)
if %chute% lss %numero% (
	echo ╠════════════════════════════════════════╣
	echo   O número sorteado é MAIOR que %chute%.  
	echo     Por favor, tente um número maior!    
	echo ╠════════════════════════════════════════╣
	if %tentativas% equ 5 (goto:perdeu) 
	goto:palpite
cls
)

:ganhou
title Sorteador - Menu Ganhou
cls
echo.         
echo        ##########################          
echo   #####################################    
echo #########################################  
echo ####      ######################       #### 
echo ###       ######################        ### 
echo ##        ######################        ### 
echo ###     ##########################      ### 
echo ###    ############################    #### 
echo ###   ### #################### ###    ###  
echo ####   ### ################## ####  ####   
echo   ####  ######################### #####    
echo    ######## ################ #########     
echo      ######  ##############   ######       
echo               ############                 
echo                 ########                   
echo                   ####                     
echo                   ####
echo               ############                 
echo            ##################                           
echo            ###            ###                                                   
echo            ##################                         
echo          ######################                                                                     
echo ╔═════════════════════════════════════════╗
echo ║              ººVOCÊ ACERTOUºº           ║  
echo ╠═════════════════════════════════════════╣
echo   O número sorteado era mesmo o %numero%.
echo    Número de tentativas: %tentativas%.   
echo ╠═════════════════════════════════════════╣
echo ║            ºººººMENUººººº               ║
echo ╠═════════════════════════════════════════╣
echo ║ [1] VOLTAR A TELA INICIAL               ║
echo ║ [2] SAIR                                ║
echo ╚═════════════════════════════════════════╝
echo.
set /p op= DIGITE SUA OPÇÃO: 
if %op%  equ  1 (goto:inicio)
if %op%  equ  2 (exit) else (
echo.
echo ╔══════════════════════════════════════╗
echo             Opção Inválida            
echo ╚══════════════════════════════════════╝
echo.
pause
goto:ganhou
)

:perdeu
title Sorteador - Menu Perdeu
cls
echo.⠀⠀
echo     /\_____/\
echo    /  o   o  \
echo   (  __/\__  )
echo    )         (
echo   (           )
echo  ( (  )   (  ) )
echo (__(__)___(__)__)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ╔═════════════════════════════════════╗
echo ║           ººVOCÊ PERDEUºº           ║  
echo ╠═════════════════════════════════════╣
echo     O número sorteado era %numero%.  
echo                                      
echo ╠═════════════════════════════════════╣
echo ║              ºººMENUººº             ║
echo ╠═════════════════════════════════════╣
echo ║ [1] JOGAR NOVAMENTE                 ║
echo ║ [2] SAIR                            ║
echo ╚═════════════════════════════════════╝
echo.
set /p op= DIGITE SUA OPÇÃO: 
if %op%  equ  1 (goto:inicio)
if %op%  equ  2 (exit) else (
echo.
echo ╔══════════════════════════════════════╗
echo             Opção Inválida            
echo ╚══════════════════════════════════════╝
echo.
pause
goto:perdeu
)