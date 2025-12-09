@echo off
echo ========================================
echo    PUSH AUTOMATICO PARA GITHUB
echo ========================================
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
    echo ERRO ao criar commit!
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

