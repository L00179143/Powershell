# The below script converts the string value to completely Upper and Completely lower alphabets.

$StringValue = "Yoo hoo!"
$StringValue.ToUpper()
$StringValue.ToLower()

# Below is an example of how array works

$MyArray = 1,2,3,4,5
$MyArray[4]

# Floating points

[float]$Floaty32 = 20.24
$Floaty32.GetType()
[double]$Floaty64 = 2024.2024
$Floaty64.GetType()

#Array 

$Vehicle=@("Red","Baleno","Hatchback")
Write-Host $Vehicle[0..4]

