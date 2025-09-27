@echo off

set P4LOG=C:\Users\u1475663\source\repos\Perforce-discord-botlogger\Temp\p4login.log
echo [%date% %time%] Starting Perforce login... >> %P4LOG% 2>&1
"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -windowstyle hidden -ExecutionPolicy Unrestricted -command "echo '<password>' | & 'C:\Program Files\Perforce\p4.exe' -u <username> login" >> %P4LOG% 2>&1
echo [%date% %time%] Finished Perforce login. >> %P4LOG% 2>&1

set BOTLOG=C:\Users\u1475663\source\repos\Perforce-discord-botlogger\Temp\bot.log
echo [%date% %time%] Starting bot... >> %BOTLOG% 2>&1
"C:\Program Files\Python313\python.exe" "C:\Users\u1475663\source\repos\Perforce-discord-botlogger\app\app.py" >> %BOTLOG% 2>&1
echo [%date% %time%] Finished bot task. >> %BOTLOG% 2>&1

exit
