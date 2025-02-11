curl -o %USERPROFILE%\.yamete\plug_in.wav https://raw.githubusercontent.com/groszek99/yamete/refs/heads/main/plug_in.wav
curl -o %USERPROFILE%\.yamete\plug_out.wav https://raw.githubusercontent.com/groszek99/yamete/refs/heads/main/plug_out.wav

reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" /t "REG_SZ" /d "%USERPROFILE%\.yamete\plug_in.wav" /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current" /t "REG_SZ" /d "%USERPROFILE%\.yamete\plug_out.wav" /f

reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Default" /t "REG_EXPAND_SZ" /d "%USERPROFILE%\.yamete\plug_in.wav" /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Default" /t "REG_EXPAND_SZ" /d "%USERPROFILE%\.yamete\plug_out.wav" /f

@REM echo Done!
@REM @pause