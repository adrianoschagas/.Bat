@echo off
chcp 65001
title Operadores Matemáticos - Nível Difícil
mode 80,39

:inicio
set /a rodada=0
set /a pontuacao=0
set /a erradas=0
set /a pontos_maximos=21

:partida
cls
set /a rodada += 1
if %rodada% == %pontos_maximos% (goto:fim)
set /a num1 = %random% %%15 + 1
set /a num2 = %random% %%15 + 1
set /a rodada = %rodada%
set /a pontuacao = %pontuacao%
set /a erradas = %erradas%
set /a conta = %random% %%3 

if %conta% == 0 (
set /a resultado = %num1% + %num2%
set sinal=+
) 
if %conta% == 1 (
set /a resultado = %num1% - %num2%
set sinal=-
) else (
set /a resultado = %num1% * %num2%
set sinal=*
)

echo.
echo ╔═══════════════════════════════════╗
echo ║            %num1% %sinal% %num2% = ??            
echo ╠═══════════════════════════════════╣
echo ║ Rodada: %rodada%ª                        ║
set /p resposta=║ Resultado do cálculo: 
echo ╚═══════════════════════════════════╝
echo.
if %resposta% == %resultado% (
set /a pontuacao += 1
) 
if %resposta% neq %resultado% (
set /a erradas+=1
)
goto:verificar

:verificar
if %resposta% == %resultado% ( 
if %pontuacao% == 0 (set /a pontuacao=1)
echo ╔══════════════════════════════════════╗
echo ║             VOCÊ ACERTOU!!           ║
echo ╠══════════════════════════════════════╣
echo ║  RODADA: %rodada%ª                          ║
echo    PONTUAÇÃO ATUAL: %pontuacao% 
echo    QUESTÕES ERRADAS: %erradas%
echo ║                                      ║   
echo ╚══════════════════════════════════════╝
echo.	
pause
goto:partida
)

if %resposta% neq %resultado% (
if %erradas% == 0 (set /a erradas=1)
echo ╔══════════════════════════════════════╗
echo ║             VOCÊ ERROU!!             ║
echo ╠══════════════════════════════════════╣
echo ║  RODADA: %rodada%ª                         ║
echo    PONTUAÇÃO ATUAL: %pontuacao%                  
echo    QUESTÕES ERRADAS: %erradas%                 
echo ║                                      ║   
echo ╚══════════════════════════════════════╝
echo.
pause
goto:partida	
)

:nome
echo.
set /p nome=╠ DIGITE SEU NOME: 
echo.
echo ║ %nome%                      %pontuacao% >> ranking_dificil.txt
echo ╔══════════════════════════════════════╗
echo    PONTUAÇÃO SALVA COM O NOME: %nome%
echo ╚══════════════════════════════════════╝
echo.
pause
goto:fim

:fim 
cls
echo.
echo ╔═══════════════════════════════════╗
echo ║         ºº FIM DE JOGO ºº         ║
echo ╠═══════════════════════════════════╣
echo ║ Pontuação máxima: 20              ║
echo   Pontuação obtida: %pontuacao%     
echo   Questões erradas: %erradas%           
echo ║                                   ║
echo ╠═══════════════════════════════════╣
echo ║ [1] REGISTRAR PONTUAÇÃO           ║
echo ║ [2] INICIAR OUTRO JOGO            ║     
echo ║ [3] VOLTAR A TELA INICIAL         ║
echo ║ [4] SAIR                          ║
echo ╚═══════════════════════════════════╝
set /p op=╠ DIGITE SUA OPÇÃO: 
if %op%  ==  1 (
goto:nome
)
if %op%  equ  2 (call modos.bat)
if %op%  equ  3 (call Operadores_Matematicos.bat)
if %op%  equ  4 (exit) else (
echo.
echo ╔══════════════════════════════════════╗
echo ║            Opção Inválida            ║
echo ╚══════════════════════════════════════╝
echo.
pause
goto:fim
)
