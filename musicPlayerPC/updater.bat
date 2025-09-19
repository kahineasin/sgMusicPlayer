@echo off
timeout /t 3 /nobreak >nul  
if exist "MusicPlayer-fusion.jar" (
    del "MusicPlayer-fusion_old.jar"
    ren ".\lib\MusicPlayer-fusion.jar" "MusicPlayer-fusion_old.jar"
    move ".\lib\MusicPlayer-fusion_old.jar" ".\"
    move "MusicPlayer-fusion.jar" ".\lib"
    @rem 这里可以考虑保留旧文件
    @rem del "MusicPlayer-fusion_old.jar"
)
@rem start javaw -jar "current-version.jar"  @rem 重启应用
start musicPlayer.bat