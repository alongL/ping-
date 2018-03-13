
@echo off 


title 　网络监测报警

rem 自行设置要监测的主机IP地址
set IP=10.20.10.1


:start
echo -----------------------------------------------------------------------------
echo 正在对%IP%进行网络测试
ping %IP% -n 1

if errorlevel 1 (
				echo ！！！！！！网络中断！！！！！！
				vbPlay.vbs "ringout.wav" ) else (
	REM  暂停60秒再进行网络测试
	ping 127.1 -n 60
)

	
goto start
