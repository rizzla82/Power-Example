cd C:\data\PowerShell\reports

$StartTime=Get-Date -Year 2019 -Month 3 -Day 25 -Hour 00 -Minute 00

$EndTime=Get-Date -Year 2019 -Month 3 -Day 25 -Hour 23 -Minute 59

Get-WinEvent -FilterHashtable @{LogName='System';;ID='18';StartTime=$StartTime;EndTime=$EndTime} | Export-Csv -Path .\25-03-2019.Csv -NoTypeInformation
