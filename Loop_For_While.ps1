#for

Write-Host "for loop"
$names = @("sudharsan", "swathi", "jathin")

for($i = 0; $i -lt $names.length; $i++)
{
     $names[$i] 
}


#while

Write-Host "while loop"

$counter = 1;

while($counter -lt $names.length){
   $names[$counter]
   $counter += 1
}
 
