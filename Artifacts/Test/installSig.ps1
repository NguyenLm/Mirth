$bcSetupUrl = 'https://github.com/NguyenLm/Mirth/blob/master/Acs.eSignature.v7.6.0.2.Client.msi?raw=true'
$bcSetup = "c:\temp\sig\A02install.msi"
New-Item -Path c:\temp\sig -ItemType directory
 
try
{
    Invoke-WebRequest -Uri $bcSetupUrl -OutFile c:\temp\sig\A02install.msi
}
catch
{
    Write-Error "Failed to download  Setup"
}
 
try
{
    Start-Process -FilePath c:\temp\sig\A02install.msi -ArgumentList "/Quiet /norestart"
}
catch
{
    Write-Error 'Failed to install'
}
