[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repositoryRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path

Get-ChildItem -LiteralPath (Join-Path $repositoryRoot 'agent'), (Join-Path $repositoryRoot 'evaluations') -Filter '*.json' -Recurse |
    ForEach-Object { Get-Content -LiteralPath $_.FullName -Raw | ConvertFrom-Json | Out-Null }

Get-ChildItem -LiteralPath (Join-Path $repositoryRoot 'skills') -Directory | ForEach-Object {
    $skillFile = Join-Path $_.FullName 'SKILL.md'
    if (-not (Test-Path -LiteralPath $skillFile)) { throw "Missing SKILL.md in $($_.Name)" }
    $content = Get-Content -LiteralPath $skillFile -Raw
    if ($content -notmatch '(?ms)^---\s*\r?\n.*?^name:\s*\S+\s*$.*?^description:\s*\S.+?^---\s*$') {
        throw "Invalid skill front matter in $skillFile"
    }
}

Write-Output 'Repository validation passed.'
