mkdir %USERPROFILE%\.yamete
copy /Y plug_in.wav %USERPROFILE%\.yamete\plug_in.wav
copy /Y plug_out.wav %USERPROFILE%\.yamete\plug_out.wav

reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" /t "REG_SZ" /d "%USERPROFILE%\.yamete\plug_in.wav" /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current" /t "REG_SZ" /d "%USERPROFILE%\.yamete\plug_out.wav" /f

@REM echo Done!
@REM @pause