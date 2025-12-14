# DisableWin11TelemetryScript
## PowerShell Script to Disable Telemetry and Windows Error Reporting via GPO

This PowerShell script disables telemetry and Windows error reporting by configuring the appropriate group policies and registry entries.

### Instructions

1. **Open PowerShell as Administrator**: 
   Before running the script, ensure that you open PowerShell with **Administrator privileges**. To do this:
   - Right-click on the **PowerShell** shortcut and select **Run as Administrator**.

2. **Download the Script**: 
   Download the script using the following command:
   ```powershell
   Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lke-lab/DisableWin11TelemetryScript/main/DisableTelemetryScript.ps1" -UseBasicP)

Run the Script:
After downloading, the script will execute automatically. Make sure to run PowerShell as Administrator to ensure it has the required permissions to modify system settings.

Restart Required:
After running the script, a system restart is required for the changes to take effect.


PowerShell-Skript zum Deaktivieren der Telemetrie und Fehlerberichterstattung
Dieses PowerShell-Skript deaktiviert die Telemetrie und die Windows-Fehlerberichterstattung, indem es entsprechende Gruppenrichtlinien und Registrierungseinträge setzt.

PowerShell-Skript zum Deaktivieren der Telemetrie und Fehlerberichterstattung

Dieses PowerShell-Skript deaktiviert die Telemetrie und die Windows-Fehlerberichterstattung, indem es entsprechende Gruppenrichtlinien und Registrierungseinträge setzt.

Anleitung

PowerShell als Administrator öffnen:
Stelle sicher, dass du PowerShell mit Administratorrechten öffnest, bevor du das Skript ausführst. So geht's:

Klicke mit der rechten Maustaste auf das PowerShell-Symbol und wähle Als Administrator ausführen.

# PowerShell-Skript zum Deaktivieren der Telemetrie und Fehlerberichterstattung

Dieses PowerShell-Skript deaktiviert die Telemetrie und die Windows-Fehlerberichterstattung, indem es entsprechende Gruppenrichtlinien und Registrierungseinträge setzt.

## Anleitung

1. **Skript herunterladen**:
   Lade das Skript mit folgendem Befehl herunter:
   ```powershell
   Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lke-lab/DisableWin11TelemetryScript/main/DisableTelemetryScript.ps1" -UseBasicP)

" -OutFile "$env:USERPROFILE\Desktop\DisableTelemetry.ps1"


Skript ausführen:
Nachdem das Skript heruntergeladen wurde, wird es automatisch ausgeführt. Achte darauf, PowerShell als Administrator auszuführen, um die erforderlichen Berechtigungen zu haben.

Neustart erforderlich:
Nach dem Ausführen des Skripts ist ein Neustart des Systems erforderlich, damit die Änderungen wirksam werden.
