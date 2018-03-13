'播放声音文件 用法　vbplay.vbs xx.wav  

Set Args = Wscript.Arguments

For i=0 to Args.Count - 1
Dim Wmp
Set Wmp=CreateObject("WMPlayer.OCX")

'Volume 设置音量
Wmp.Settings.Volume="100"

Wmp.Url=Args(i)
While Wmp.PlayState=9 or Wmp.PlayState=6 or Wmp.PlayState=3
  Wscript.Sleep 1000
Wend 
  Set Wmp=Nothing

next