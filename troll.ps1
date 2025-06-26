# 1 - Cambiar fondo de pantalla
$img = Join-Path $env:TEMP "wall.jpg"
Invoke-WebRequest -Uri "https://people.com/thmb/IVbPa4OcPf0pthAT_LGEDiEyeYU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(719x9:721x11)/Jason-Momoa-wearing-his-traditional-Hawaiian-malo-thong-on-Jimmy-Kimmel-Live-111022-1-33a0f35b85734a2b9976b7d63159a235.jpg" -OutFile $img
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name Wallpaper -Value $img
RUNDLL32.exe user32.dll,UpdatePerUserSystemParameters

# 2 - Activar alto contraste
Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\HighContrast" -Name "Flags" -Value "1"
RUNDLL32.exe user32.dll,UpdatePerUserSystemParameters

# 3 - Bajar velocidad del ratón
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSensitivity" -Value 1
RUNDLL32.exe user32.dll,UpdatePerUserSystemParameters

# 4 - Invertir botones del ratón
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "SwapMouseButtons" -Value 1
RUNDLL32.exe user32.dll,UpdatePerUserSystemParameters

# 5 - Mostrar mensajes troll
Add-Type -AssemblyName PresentationFramework

[System.Windows.MessageBox]::Show(
  "Se ha detectado una negligencia de seguridad grave.\n\nHas dejado el equipo desbloqueado.",
  "Informe del Comité Disciplinario",
  [System.Windows.MessageBoxButton]::OK,
  [System.Windows.MessageBoxImage]::Error)

$response = [System.Windows.MessageBox]::Show(
  "¿Prometes bloquear tu equipo cada vez que te ausentes?",
  "Juramento de Seguridad",
  [System.Windows.MessageBoxButton]::YesNo,
  [System.Windows.MessageBoxImage]::Warning)

if ($response -eq [System.Windows.MessageBoxResult]::Yes) {
    [System.Windows.MessageBox]::Show(
      "Buen chico. Que no vuelva a pasar.",
      "Aprobado",
      [System.Windows.MessageBoxButton]::OK,
      [System.Windows.MessageBoxImage]::Information)
} else {
    1..50 | ForEach-Object {
        Start-Sleep -Milliseconds 150
        [System.Windows.MessageBox]::Show(
          "¿¡CÓMO QUE NO, CABESTRO?!",
          "ERROR $_",
          [System.Windows.MessageBoxButton]::OK,
          [System.Windows.MessageBoxImage]::Hand)
    }
}

# 6 - Voz burla (opcional)
Add-Type -AssemblyName System.Speech
$voz = New-Object System.Speech.Synthesis.SpeechSynthesizer
$voz.Speak("Tu equipo fue invadido. Bloquéalo la próxima vez.")
