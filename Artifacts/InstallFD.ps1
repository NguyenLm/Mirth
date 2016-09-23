$bcSetupUrl = 'https://github.com/NguyenLm/Mirth/blob/master/Artifacts/Formatta-Designer-8.13.0.msi?raw=true'
New-Item -Path c:\temp\formatta -ItemType directory
 
try
{
    Invoke-WebRequest -Uri $bcSetupUrl -OutFile c:\temp\formatta\F01.msi
}
catch
{
    Write-Error "Failed to download  Setup"
}
 
try
{
    Start-Process -FilePath c:\temp\formatta\F01.msi -ArgumentList "/Quiet /norestart"
}
catch
{
    Write-Error 'Failed to install'
}