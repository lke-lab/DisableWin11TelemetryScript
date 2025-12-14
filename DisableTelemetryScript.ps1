# PowerShell-Skript zum Deaktivieren der Telemetrie und der Windows Fehlerberichterstattung über GPO

# Setze die Registrierungseinträge zum Deaktivieren der Telemetrie
$telemetryRegKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
$telemetryValue = "AllowTelemetry"
$telemetryDisabledValue = 0  # 0 = Deaktiviert die Telemetrie

# Erstelle den Registrierungsschlüssel für DataCollection, falls er noch nicht existiert
if (-not (Test-Path $telemetryRegKey)) {
    New-Item -Path $telemetryRegKey -Force
}

# Setze den Wert AllowTelemetry auf 0 (Deaktiviert die Telemetrie)
Set-ItemProperty -Path $telemetryRegKey -Name $telemetryValue -Value $telemetryDisabledValue

# Setze die Registrierungseinträge zum Deaktivieren der Windows-Fehlerberichterstattung
$errorReportingRegKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting"
$errorReportingValue = "Disabled"
$errorReportingDisabledValue = 1  # 1 = Deaktiviert die Fehlerberichterstattung

# Erstelle den Registrierungsschlüssel für Windows Error Reporting, falls er noch nicht existiert
if (-not (Test-Path $errorReportingRegKey)) {
    New-Item -Path $errorReportingRegKey -Force
}

# Setze den Wert Disabled auf 1 (Deaktiviert die Windows Fehlerberichterstattung)
Set-ItemProperty -Path $errorReportingRegKey -Name $errorReportingValue -Value $errorReportingDisabledValue

# Ausgabe einer Bestätigungsmeldung
Write-Host "Telemetrie und Windows Fehlerberichterstattung wurden erfolgreich deaktiviert." -ForegroundColor Green

# Erzwinge ein sofortiges Gruppenrichtlinien-Update
gpupdate /force

# Hinweis, dass ein Neustart erforderlich ist
Write-Host "Ein Neustart des Systems ist erforderlich, damit alle Änderungen wirksam werden." -ForegroundColor Yellow
