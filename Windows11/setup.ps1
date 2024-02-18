# Ensure the script is running with administrative privileges
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Host "Please run PowerShell as Administrator."
    exit
}

# Checking if Chocolatey is installed by attempting to get its version
$chocoInstalled = $true
try {
    choco -v | Out-Null
} catch {
    $chocoInstalled = $false
}

# If Chocolatey is not installed, install it
if (-not $chocoInstalled) {
    Write-Host "Chocolatey is not installed. Installing now..."
    # Using iwr (Invoke-WebRequest) to download and execute the installation script
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
}
else {
    # If Chocolatey is installed, upgrade it
    Write-Host "Chocolatey is already installed. Upgrading Chocolatey..."
    choco upgrade chocolatey -y
}

# List of applications to install or update
$apps = @("git", "visualstudiocode", "awscli", "azure-cli")

# Loop through each application and install or update it
foreach ($app in $apps) {
    Write-Host "Installing or updating $app..."
    choco upgrade $app -y
}

Write-Host "Operation Completed."
