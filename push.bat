@echo off
echo ========================================
echo    PUSH AUTOMATICO PARA GITHUB
echo ========================================
echo.

echo [0/3] Verificando se ha mudancas...
git status --porcelain >nul 2>&1
if %errorlevel% neq 0 (
    echo ERRO ao verificar status do repositorio!
    pause
    exit /b 1
)

git diff --quiet && git diff --cached --quiet
if %errorlevel% equ 0 (
    echo.
    echo AVISO: Nao ha mudancas para commitar!
    echo O repositorio esta atualizado.
    echo.
    echo Deseja fazer push mesmo assim? (S/N)
    set /p push_anyway="> "
    if /i not "%push_anyway%"=="S" (
        echo Operacao cancelada.
        pause
        exit /b 0
    )
    echo.
    echo Fazendo push sem novos commits...
    git push origin main
    if %errorlevel% neq 0 (
        echo ERRO ao fazer push!
        pause
        exit /b 1
    )
    echo.
    echo ========================================
    echo    PUSH CONCLUIDO COM SUCESSO!
    echo ========================================
    echo.
    pause
    exit /b 0
)

echo OK - Ha mudancas para commitar
echo.

echo [1/3] Adicionando arquivos ao staging...
git add .
if %errorlevel% neq 0 (
    echo ERRO ao adicionar arquivos!
    pause
    exit /b 1
)
echo OK - Arquivos adicionados
echo.

echo [2/3] Criando commit...
set /p commit_msg="Digite a mensagem do commit (ou pressione Enter para usar mensagem padrao): "
if "%commit_msg%"=="" set commit_msg=Atualizacao automatica - %date% %time%
git commit -m "%commit_msg%"
if %errorlevel% neq 0 (
    echo.
    echo ERRO ao criar commit!
    echo Possivel causa: Nao ha mudancas para commitar ou mensagem invalida.
    pause
    exit /b 1
)
echo OK - Commit criado
echo.

echo [3/3] Enviando para GitHub...
git push origin main
if %errorlevel% neq 0 (
    echo ERRO ao fazer push!
    pause
    exit /b 1
)
echo.
echo ========================================
echo    PUSH CONCLUIDO COM SUCESSO!
echo ========================================
echo.
pause

