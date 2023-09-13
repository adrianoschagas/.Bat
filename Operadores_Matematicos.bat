@echo off
chcp 65001
mode 90,40

:inicio
title Operadores Matemáticos - Menu
cls
echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║      SEJA BEM VINDO AO OPERADORES MATEMÁTICOS     ║
echo ╠═══════════════════════════════════════════════════╣
echo ║ [1] JOGAR                                         ║
echo ║ [2] RANKING                                       ║
echo ║ [3] COMO JOGAR                                    ║
echo ║ [4] SAIR                                          ║
echo ╚═══════════════════════════════════════════════════╝
echo.
set /p op=╠ DIGITE SUA OPÇÃO: 
if %op%  equ  1 (call modos.bat)
if %op%  equ  2 (goto:ranking)
if %op%  equ  3 (goto:como_jogar)
if %op%  equ  4 (exit) else (
echo.
echo ╔══════════════════════════════════════╗
echo ║            Opção Inválida            ║
echo ╚══════════════════════════════════════╝
echo.
pause
goto:inicio
)

:ranking
title Mural dos Jogadores - Menu
cls
echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║       SEJA BEM VINDO AO MURAL DOS JOGADORES       ║
echo ╠═══════════════════════════════════════════════════╣
echo ║ [1] MURAL DO NÍVEL FÁCIL                          ║
echo ║ [2] MURAL DO NÍVEL MÉDIO                          ║
echo ║ [3] MURAL DO NÍVEL DIFÍCIL                        ║
echo ║ [4] VOLTAR A TELA INICIAL                         ║
echo ║ [5] SAIR                                          ║
echo ╚═══════════════════════════════════════════════════╝
echo.
set /p op=╠ DIGITE SUA OPÇÃO: 
if %op%  equ  1 (goto:ranking_facil)
if %op%  equ  2 (goto:ranking_medio)
if %op%  equ  3 (goto:ranking_dificil)
if %op%  equ  4 (goto:inicio)
if %op%  equ  5 (exit) else (
echo.
echo ╔══════════════════════════════════════╗
echo ║            Opção Inválida            ║
echo ╚══════════════════════════════════════╝
echo.
pause
goto:ranking
)

:ranking_facil
title Mural dos Jogadores - Nível Facíl
cls
echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║         MURAL DOS JOGADORES - NÍVEL FÁCIL         ║
echo ╠══════════════════════════╦════════════════════════╣
echo ║ NOME:                    ║ PONTUAÇÃO:             ║
type   ranking_facil.txt 
echo ╚══════════════════════════╩════════════════════════╝
echo.
pause
set /p resp=╠ Deseja ir a tela inicial? [S/N]: 
if /i %resp% == s (goto:inicio)
if /i %resp% == n (exit) else (
echo Responda somente com S ou N
goto:ranking_facil
)

:ranking_medio
title Mural dos Jogadores - Nível Médio
cls
echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║         MURAL DOS JOGADORES - NÍVEL MÉDIO         ║
echo ╠══════════════════════════╦════════════════════════╣
echo ║ NOME:                    ║ PONTUAÇÃO:             ║
type   ranking_medio.txt 
echo ╚══════════════════════════╩════════════════════════╝
echo.
pause
set /p resp=╠ Deseja ir a tela inicial? [S/N]:
if /i %resp% == s (goto:inicio)
if /i %resp% == n (exit) else (
echo Responda somente com S ou N
goto:ranking_medio
)

:ranking_dificil
title Mural dos Jogadores - Nível Difícil
cls
echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║        MURAL DOS JOGADORES - NÍVEL DIFÍCIL        ║
echo ╠══════════════════════════╦════════════════════════╣
echo ║ NOME:                    ║ PONTUAÇÃO:             ║
type   ranking_dificil.txt
echo ╚══════════════════════════╩════════════════════════╝
echo.
pause
set /p resp=╠ Deseja ir a tela inicial? [S/N]:
if /i %resp% == s (goto:inicio)
if /i %resp% == n (exit) else (
echo Responda somente com S ou N
goto:ranking_dificil
)

:como_jogar
title Operadores Matemáticos - Como jogar
cls
echo.
echo ╔════════════════════════════════════════════════════════════════════════════════════════╗
echo ║                        COMO FUNCIONA OPERADORES MATEMÁTICOS                            ║
echo ╠════════════════════════════════════════════════════════════════════════════════════════╣
echo ║  º Você terá que resolver problemas matemáticos, colocando o resultado da operação;    ║
echo ║  º Será utilizado somente os operadores de MULTIPLICAÇÃO(*), ADIÇÃO(+) e SUBTRAÇÃO(-); ║
echo ║  º Ao acertar o valor correto, será adicionado 1 ponto de acerto;                      ║
echo ║  º Caso erre o resultado, você deixará de ganhar 1 ponto de acerto;                    ║
echo ║  º Na 10ª ou 20ª(no Díficil) rodada, o jogo será finalizado, mostrando sua pontuação;  ║
echo ║  º Ao final de qualquer nível de jogo, você poderá registrar seu nome e pontuação no   ║
echo ║    mural de jogadores, escrevendo S.                                                   ║ 
echo ║                                                                                        ║
echo ╠════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                          EXEMPLOS DE CALCULOS MATEMÁTICOS                              ║
echo ╠════════════════════════════════════════════════════════════════════════════════════════╣
echo ║  º MULTIPLICAÇÃO(*):                                                                   ║
echo ║     EX: 2 * 2 = ?                                                                      ║
echo ║     RESPOSTA: 4                                                                        ║  
echo ╠════════════════════════════════════════════════════════════════════════════════════════╣
echo ║  º ADIÇÃO(+):                                                                          ║  
echo ║     EX: 1 + 2 = ?                                                                      ║
echo ║     RESPOSTA: 3                                                                        ║ 
echo ╠════════════════════════════════════════════════════════════════════════════════════════╣
echo ║  º SUBTRAÇÃO(-):                                                                       ║
echo ║     EX: 3 - 2 = ?                                                                      ║
echo ║     RESPOSTA: 1                                                                        ║ 
echo ╚════════════════════════════════════════════════════════════════════════════════════════╝
echo. 
set /p resp=╠ Deseja ir a tela inicial? [S/N]: 
if /i %resp% == s (goto:inicio)
if /i %resp% == n (exit) else (
echo Responda somente com S ou N
goto:como_jogar
)

