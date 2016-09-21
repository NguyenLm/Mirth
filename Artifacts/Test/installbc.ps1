$bcSetupUrl = 'http://downloads.mirthcorp.com/connect/3.4.1.8057.b139/mirthconnect-3.4.1.8057.b139-windows-x64.exe'
$bcSetup = "${env:Temp}\mirthconnect-3.4.1.8057.b139-windows-x64.exe"

 
try
{
    Invoke-WebRequest -Uri $bcSetupUrl -OutFile $bcSetup
}
catch
{
    Write-Error "Failed to download Mirth Setup"
}
 
try
{
    Start-Process -FilePath $bcSetup -ArgumentList "/VERYSILENT"
}
catch
{
    Write-Error 'Failed to install Mirth'
}
