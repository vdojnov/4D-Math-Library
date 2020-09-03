//%attributes = {}
//https://doc.4d.com/4Dv15/4D/15.6/Dec.301-3818404.en.html 
//var $math : cs.Math
//$math:=cs.Math.new()

import Math

var $result,$result1 : Real
var $invalidInput,$success,$missingParameters,$unexpectedParameter : Text

$success:=Math.success
$missingParameters:=Math.missingParameters
$invalidInput:=Math.invalidInput
$unexpectedParameter:=Math.unexpectedParameter

//-----------------
// 5 Paremeters
$ObjResult:=Math.max(4;5;3;2;1)
ASSERT:C1129(($ObjResult.result=5) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// 3 Parameters
$ObjResult:=Math.max(4;5;3)
ASSERT:C1129(($ObjResult.result=5) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.max()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
//-----------------
// 5 Paremeters
$ObjResult:=Math.min(4;5;3;2;1)
ASSERT:C1129(($ObjResult.result=1) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// 3 Parameters
$ObjResult:=Math.min(4;5;3)
ASSERT:C1129(($ObjResult.result=3) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// 0 Parameters
$ObjResult:=Math.min()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
//-----------------
// 5 Paremeters
$ObjResult:=Math.sum(4;5;3;2;1)
ASSERT:C1129(($ObjResult.result=15) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// 3 Parameters
$ObjResult:=Math.sum(4;5;3)
ASSERT:C1129(($ObjResult.result=12) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// 0 Parameters
$ObjResult:=Math.sum()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
//-----------------
// 5 Paremeters
$ObjResult:=Math.average(4;5;3;2;1)
ASSERT:C1129(($ObjResult.result=3) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// 3 Parameters
$ObjResult:=Math.average(4;5;3)
ASSERT:C1129(($ObjResult.result=4) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// 0 Parameters
$ObjResult:=Math.average()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.sqrt(4)
ASSERT:C1129(($ObjResult.result=2) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.sqrt(16)
ASSERT:C1129(($ObjResult.result=4) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.sqrt(-1)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$invalidInput);$ObjResult.statusMessage)
$ObjResult:=Math.sqrt()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.sqrt(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.pow(2;2)
ASSERT:C1129(($ObjResult.result=4) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.pow(2;3)
ASSERT:C1129(($ObjResult.result=8) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.pow()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.pow(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
//Round up
$ObjResult:=Math.round(4.536)
ASSERT:C1129(($ObjResult.result=5) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
//Round down
$ObjResult:=Math.round(4.436)
ASSERT:C1129(($ObjResult.result=4) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// round to n number of decimals
$ObjResult:=Math.round(4.4536;3)
ASSERT:C1129(($ObjResult.result=4.454) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.round()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.round(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.abs(-53.9)
ASSERT:C1129(($ObjResult.result=53.9) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.abs(53.9)
ASSERT:C1129(($ObjResult.result=53.9) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.abs()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.abs(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
// works when decimals are bigger than 0.00000000001
$ObjResult:=Math.ceil(53.00000001)
ASSERT:C1129(($ObjResult.result=54) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.ceil(53)
ASSERT:C1129(($ObjResult.result=53) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.ceil(-53.3)
ASSERT:C1129(($ObjResult.result=-53) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.ceil()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.ceil(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
// numver between 0 inclusive and 1 exclusive
$ObjResult:=Math.random()
ASSERT:C1129((($ObjResult.result>=0) & ($ObjResult.result<1)) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// Random number between 0 and N inclusive
$ObjResult:=Math.random(5)
ASSERT:C1129((($ObjResult.result<=5) & ($ObjResult.result>=0)) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
// Random number between $1 and $2 inclusive
$ObjResult:=Math.random(5;10)
ASSERT:C1129((($ObjResult.result<=10) & ($ObjResult.result>=5)) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.random(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.factorial(5)
ASSERT:C1129(($ObjResult.result=120) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.factorial(0)
ASSERT:C1129(($ObjResult.result=1) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.factorial(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
$ObjResult:=Math.factorial(-1)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$invalidInput);$ObjResult.statusMessage)
$ObjResult:=Math.factorial()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.cbrt(8)
ASSERT:C1129(($ObjResult.result=2) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.cbrt(27)
ASSERT:C1129(($ObjResult.result=3) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.cbrt()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.cbrt(3;7;6)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.$unexpectedParameter)
//-----------------
$ObjResult:=Math.hypot(3;4)
ASSERT:C1129(($ObjResult.result=5) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.hypot(5;12)
ASSERT:C1129(($ObjResult.result=13) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.hypot(5)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.hypot(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.sign(4)
ASSERT:C1129(($ObjResult.result=1) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.sign(-4)
ASSERT:C1129(($ObjResult.result=-1) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.sign(0)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.sign()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.sign(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.copySign(4;1)
ASSERT:C1129(($ObjResult.result=4) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.copySign(4;-1)
ASSERT:C1129(($ObjResult.result=-4) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.copySign(4;0)
ASSERT:C1129(($ObjResult.result=4) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.copySign(-4;0)
ASSERT:C1129(($ObjResult.result=4) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.copySign()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.copySign(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.exp(1)
ASSERT:C1129(($ObjResult.result=Math.E) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.exp(5)
ASSERT:C1129((Math.round($ObjResult.result;3).result=Math.round(Math.pow(Math.E;5).result;3).result) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.exp()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.exp(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.floor(5.3)
ASSERT:C1129(($ObjResult.result=5) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.floor(-5.3)
ASSERT:C1129(($ObjResult.result=-6) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.floor(0)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.floor()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.floor(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.log(Math.E)
ASSERT:C1129(($ObjResult.result=1) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.log()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.log(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.cos(0)
ASSERT:C1129(($ObjResult.result=1) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.cos(Math.PI)
ASSERT:C1129(($ObjResult.result=-1) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.cos()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.cos(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.tan(0)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.tan(Math.PI)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.tan()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.tan(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$ObjResult:=Math.sin(0)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.sin(Math.PI)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$success);$ObjResult.statusMessage)
$ObjResult:=Math.sin()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$missingParameters);$ObjResult.statusMessage)
$ObjResult:=Math.sin(5;12;8)
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage=$unexpectedParameter);$ObjResult.statusMessage)
//-----------------
$result:=Math.toDegrees(Math.PI)
ASSERT:C1129($result=180)
$result:=Math.toDegrees(Math.PI/2)
ASSERT:C1129($result=90)
//-----------------
$result:=Math.toRadians(360)
ASSERT:C1129($result=(2*Math.PI))
$result:=Math.toRadians(45)
ASSERT:C1129($result=(Math.PI/4))
//-----------------
$result:=Math.int(36.9)
ASSERT:C1129($result=36)
$result:=Math.int(36.1)
ASSERT:C1129($result=36)
//-----------------
var $t : Text
$t:=Math.toString(8)
ASSERT:C1129($t="8")
$t:=Math.toString($result)
ASSERT:C1129(Type:C295($t)=Is text:K8:3)

//alert(string(Math.cos(5;False)))
