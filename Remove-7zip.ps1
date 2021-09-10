$b = Get-WmiObject -Class win32_product -ComputerName localhost, zfs10.gsldev.local -Filter "Name like '%7-Zip%'"
$b.Uninstall()


