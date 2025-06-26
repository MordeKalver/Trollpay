# 1 - Cambiar fondo de pantalla
$img = Join-Path $env:TEMP "wall.jpg"
Invoke-WebRequest -Uri "https://people.com/thmb/IVbPa4OcPf0pthAT_LGEDiEyeYU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(719x9:721x11)/Jason-Momoa-wearing-his-traditional-Hawaiian-malo-thong-on-Jimmy-Kimmel-Live-111022-1-33a0f35b85734a2b9976b7d63159a235.jpg" -OutFile $img
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name Wallpaper -Value $img
RUNDLL32.exe user32.dll,UpdatePerUserSystemParameters

# 2 - Mostrar cadena de mensajes troll
Add-Type -AssemblyName PresentationFramework

[System.Windows.MessageBox]::Show(
  "Acepto que soy culpable de haber dejado el equipo desprotegido y todo es culpa mia",
  "Confesion",[System.Windows.MessageBoxButton]::OK,
  [System.Windows.MessageBoxImage]::Error)

$r = [System.Windows.MessageBox]::Show(
  "Prometo no dejar el equipo desbloqueado otra vez",
  "Promesa",[System.Windows.MessageBoxButton]::YesNo,
  [System.Windows.MessageBoxImage]::Question)

if ($r -eq [System.Windows.MessageBoxResult]::Yes) {
    [System.Windows.MessageBox]::Show(
      "Buen chico, que no vuelva a ocurrir",
      "OK",[System.Windows.MessageBoxButton]::OK,
      [System.Windows.MessageBoxImage]::Information)
} else {
    1..100 | ForEach-Object {
        [System.Windows.MessageBox]::Show(
          "PERO COMO QUE NO CABESTRO???",
          "Error",[System.Windows.MessageBoxButton]::OK,
          [System.Windows.MessageBoxImage]::Error)
    }
}
