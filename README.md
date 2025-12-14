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

3. Run the Script:
   After downloading, the script will execute automatically. Make sure to run PowerShell as Administrator to ensure it has the required permissions to modify system settings.

4. Restart Required:
   After running the script, a system restart is required for the changes to take effect.




# German / DisableWin11TelemetryScript
## PowerShell-Skript zum Deaktivieren der Telemetrie und der Windows-Fehlerberichterstattung über GPO

Dieses PowerShell-Skript deaktiviert die Telemetrie und die Windows-Fehlerberichterstattung, indem es die entsprechenden Gruppenrichtlinien und Registrierungseinträge konfiguriert.

### Anleitung

1. **PowerShell als Administrator öffnen**:  
   Stelle sicher, dass du PowerShell mit **Administratorrechten** öffnest, bevor du das Skript ausführst. Gehe folgendermaßen vor:
   - Klicke mit der rechten Maustaste auf das **PowerShell**-Symbol und wähle **Als Administrator ausführen**.

2. **Skript herunterladen**:  
   Lade das Skript mit folgendem Befehl herunter:
   ```powershell
   Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lke-lab/DisableWin11TelemetryScript/main/DisableTelemetryScript.ps1" -UseBasicP)

3. Skript ausführen:
   Nachdem das Skript heruntergeladen wurde, wird es automatisch ausgeführt. Achte darauf, PowerShell als Administrator auszuführen, damit das Skript die erforderlichen Berechtigungen zum Ändern der Systemeinstellungen hat.

4. Neustart erforderlich:
   Nach dem Ausführen des Skripts ist ein Neustart des Systems erforderlich, damit die Änderungen wirksam werden.
