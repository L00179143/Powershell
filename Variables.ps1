$VarTest = 1, 2, "a", "££"
$VarTest
clear-variable -Name VarTest
$VarTest
Remove-Variable -Name VarTest

# Below commands display the type of variables, when run. The output expected is System.Array

$VarTest2 = 1, 2, "a", "$$"
$varTest2.GetType()
