@echo off
echo Liberando IP...
ipconfig /release
ipconfig /renew

echo Limpando cache DNS...
ipconfig /flushdns

echo Reset Winsock...
netsh winsock reset

echo Reset TCP/IP...
netsh int ip reset

echo SFC Scan...
sfc /scannow

echo DISM Check...
DISM /Online /Cleanup-Image /RestoreHealth

echo Limpeza de Disco (usando a configuração 1)...
cleanmgr /sagerun:1

echo Pronto! Reinicie o computador caso seja solicitado.
pause
