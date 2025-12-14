# PowerShell Script to Disable Telemetry and Windows Error Reporting via GPO
# PowerShell-Skript zum Deaktivieren der Telemetrie und der Windows Fehlerberichterstattung über GPO

# Set the registry values for disabling Telemetry
# Setze die Registrierungseinträge zum Deaktivieren der Telemetrie
$telemetryRegKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
$telemetryValue = "AllowTelemetry"
$telemetryDisabledValue = 0  # 0 = Deaktiviert die Telemetrie

# Create registry key for DataCollection if it doesn't exist
# Erstelle den Registrierungsschlüssel für DataCollection, falls er noch nicht existiert
if (-not (Test-Path $telemetryRegKey)) {
    New-Item -Path $telemetryRegKey -Force
}

# Set the AllowTelemetry registry value to 0 (Disable Telemetry)
# Setze den Wert AllowTelemetry auf 0 (Deaktiviert die Telemetrie)
Set-ItemProperty -Path $telemetryRegKey -Name $telemetryValue -Value $telemetryDisabledValue

# Set the registry values for disabling Windows Error Reporting
# Setze die Registrierungseinträge zum Deaktivieren der Windows-Fehlerberichterstattung
$errorReportingRegKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting"
$errorReportingValue = "Disabled"
$errorReportingDisabledValue = 1  # 1 = Deaktiviert die Fehlerberichterstattung

# Create registry key for Windows Error Reporting if it doesn't exist
# Erstelle den Registrierungsschlüssel für Windows Error Reporting, falls er noch nicht existiert
if (-not (Test-Path $errorReportingRegKey)) {
    New-Item -Path $errorReportingRegKey -Force
}

# Set the Disabled registry value to 1 (Disable Windows Error Reporting)
# Setze den Wert Disabled auf 1 (Deaktiviert die Windows Fehlerberichterstattung)
Set-ItemProperty -Path $errorReportingRegKey -Name $errorReportingValue -Value $errorReportingDisabledValue

# Output confirmation message
# Ausgabe einer Bestätigungsmeldung
Write-Host "Telemetry and Windows error reporting have been successfully disabled. Telemetrie und Windows Fehlerberichterstattung wurden erfolgreich deaktiviert." -ForegroundColor Green

# Optionally, force a Group Policy update
# Erzwinge ein sofortiges Gruppenrichtlinien-Update
gpupdate /force

# Note that a restart is required
# Hinweis, dass ein Neustart erforderlich ist
Write-Host "A system restart is required for all changes to take effect! Ein Neustart des Systems ist erforderlich, damit alle Aenderungen wirksam werden!" -ForegroundColor Yellow
