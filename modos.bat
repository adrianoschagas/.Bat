@echo off
chcp 65001
mode 80,39

title Operadores Matemáticos - Menu dificuldade
cls
echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                ESCOLHA O NÍVEL DAS OPERAÇÕES                 ║
echo ╠══════════════════════════════════════════════════════════════╣
echo ║ [1] FÁCIL (Operadores: + e -. // Pontuação máxima: 10)       ║
echo ║ [2] MÉDIO (Operadores: *, + e -. // Pontuação máxima: 10)    ║
echo ║ [3] DIFÍCIL (Operadores: *, + e. - // Pontuação máxima: 20)  ║
echo ║ [4] VOLTAR A TELA INICIAL                                    ║
echo ║ [5] SAIR                                                     ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
set /p op=╠ DIGITE SUA OPÇÃO: 
if %op%  equ  1 (call jogo_facil.bat)
if %op%  equ  2 (call jogo_medio.bat)
if %op%  equ  3 (call jogo_dificil.bat)
if %op%  equ  4 (call Operadores_Matematicos.bat)
if %op%  equ  5 (exit) else (
echo.
echo ╔══════════════════════════════════════╗
echo ║            Opção Inválida            ║
echo ╚══════════════════════════════════════╝
echo.
pause
call modos.bat
)