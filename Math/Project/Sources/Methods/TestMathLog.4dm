//%attributes = {}
import Math

var $result : Real
var $int,$intResult : Integer
var $text : Text
var $objectResult : Object

//Example 1
$result:=Math.random()
ALERT:C41(String:C10($result))

//Example 2
//$int:=5
////$intResult:=Math.factorial($int)
//$intResult:=Math.factorialMemConsole($int)


////Example 3
//$int:=5
//$objectResult:=Math.factorialObject($int)
//ASSERT(($objectResult.value=120) & ($objectResult.statusMessage=Math.success))



//$text:="Hello World"
//$result:=Math.max($text;-1)
