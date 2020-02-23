echo Build started %date% %time% local time > make.log
sdcc -mpic16 -p18f2520 main.c --use-non-free >> make.log
echo Build finished %date% %time% local time > make.log
pause