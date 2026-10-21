[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repositoryRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$distributionPath = Join-Path $repositoryRoot 'dist'
$skillPackagePath = Join-Path $distributionPath 'skills'

if (Test-Path -LiteralPath $distributionPath) {
    Remove-Item -LiteralPath $distributionPath -Recurse -Force
}

New-Item -ItemType Directory -Path $skillPackagePath -Force | Out-Null

Get-ChildItem -LiteralPath (Join-Path $repositoryRoot 'skills') -Directory | ForEach-Object {
    $archivePath = Join-Path $skillPackagePath ($_.Name + '.zip')
    Compress-Archive -LiteralPath $_.FullName -DestinationPath $archivePath -CompressionLevel Optimal
}

$bundleItems = @('agent', 'skills', 'evaluations', 'docs', 'solution', 'README.md', 'LICENSE', 'SECURITY.md') |
    ForEach-Object { Join-Path $repositoryRoot $_ }

Compress-Archive -LiteralPath $bundleItems `
    -DestinationPath (Join-Path $distributionPath 'uk-market-signal-agent.zip') `
    -CompressionLevel Optimal

Write-Output "Packages created in $distributionPath"
