'���������ļ� �÷���vbplay.vbs xx.wav  

Set Args = Wscript.Arguments

For i=0 to Args.Count - 1
Dim Wmp
Set Wmp=CreateObject("WMPlayer.OCX")

'Volume ��������
Wmp.Settings.Volume="100"

Wmp.Url=Args(i)
While Wmp.PlayState=9 or Wmp.PlayState=6 or Wmp.PlayState=3
  Wscript.Sleep 1000
Wend 
  Set Wmp=Nothing

next