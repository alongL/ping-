
@echo off 


title �������ⱨ��

rem ��������Ҫ��������IP��ַ
set IP=10.20.10.1


:start
echo -----------------------------------------------------------------------------
echo ���ڶ�%IP%�����������
ping %IP% -n 1

if errorlevel 1 (
				echo �����������������жϣ�����������
				vbPlay.vbs "ringout.wav" ) else (
	REM  ��ͣ60���ٽ����������
	ping 127.1 -n 60
)

	
goto start
