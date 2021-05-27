# Compare Files From Folders

$pathFirst = "F:\CCP_library\Doc_IT_New"
$max = 0
$fullPath = ""

get-childitem -recurse -File -Path $pathFirst | 
ForEach-Object -Process {if ($_.FullName.Length -gt $max) 
{ $max = $_.FullName.Length
$fullPath = $_.FullName } }
write-host $max
write-host $fullPath