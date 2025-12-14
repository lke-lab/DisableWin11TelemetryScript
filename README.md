# DisableWin11TelemetryScript
PowerShell Script to Disable Telemetry and Windows Error Reporting via GPO

# PowerShell-Skript zum Deaktivieren der Telemetrie und Fehlerberichterstattung

Dieses PowerShell-Skript deaktiviert die Telemetrie und die Windows-Fehlerberichterstattung, indem es entsprechende Gruppenrichtlinien und Registrierungseinträge setzt.

## Anleitung

1. **Skript herunterladen**:
   Lade das Skript mit folgendem Befehl herunter:
   ```powershell
   Invoke-WebRequest -Uri "https://raw.githubusercontent.com/dein-benutzername/DisableTelemetryScript/main/DisableTelemetry.ps1" -OutFile "$env:USERPROFILE\Desktop\DisableTelemetry.ps1"

Skript ausführen:
Navigiere zu deinem Desktop und führe das Skript mit PowerShell aus. Achte darauf, PowerShell als Administrator auszuführen.

Neustart erforderlich:
Nach dem Ausführen des Skripts ist ein Neustart des Systems erforderlich, damit die Änderungen wirksam werden.


