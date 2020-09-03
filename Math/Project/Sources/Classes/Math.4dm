Class constructor
	
	//STATUS MESSAGES
	This:C1470.success:="Success"
	This:C1470.invalidInput:="Error: Invalid Input"
	This:C1470.divideByZero:="Error: Cannot divide by zero"
	This:C1470.missingParameters:="Error: Missing parameters"
	This:C1470.unexpectedParameter:="Error: Unexpected parameter(s)"
	
	//CONSTANTS
	//---------
	This:C1470.E:=e number:K30:4
	This:C1470.PI:=Pi:K30:1
	
	
	
Function sum
	var $1,$sum : Real
	C_REAL:C285({$2})
	var $numParameters,$i : Integer
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	$numParameters:=Count parameters:C259
	$sum:=0
	Case of 
		: ($numParameters>0)
			For ($i;1;$numParameters)
				$sum:=$sum+${$i}
			End for 
			$returnMessage:=This:C1470.success
		Else 
			$returnMessage:=This:C1470.missingParameters
	End case 
	$returnObject:=New object:C1471("result";$sum;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
Function average
	var $0,$1,$sum,$average : Real
	C_REAL:C285({$2})
	var $0,$returnObject : Object
	var $returnMessage : Text
	var $numParameters,$i : Integer
	
	$numParameters:=Count parameters:C259
	$sum:=0
	
	Case of 
		: ($numParameters>0)
			For ($i;1;$numParameters)
				$sum:=$sum+${$i}
			End for 
			$returnMessage:=This:C1470.success
			$average:=$sum/$numParameters
		Else 
			$returnMessage:=This:C1470.missingParameters
			$average:=0
	End case 
	
	
	$returnObject:=New object:C1471("result";$average;"statusMessage";$returnMessage)
	$0:=$returnObject
	
Function min
	var $1,$result : Real
	var $numParameters,$i : Integer
	C_REAL:C285({$2})
	var $collection : Collection
	var $textParameters,$returnMessage : Text
	var $0,$returnObject : Object
	
	$collection:=New collection:C1472
	$numParameters:=Count parameters:C259
	Case of 
		: ($numParameters>0)
			For ($i;1;$numParameters)
				$collection.push(${$i})
			End for 
			$returnMessage:=This:C1470.success
			$result:=$collection.min()
		Else 
			$returnMessage:=This:C1470.missingParameters
			$result:=0
	End case 
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
Function sqrt
	var $1,$result : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	$result:=0
	
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			If ($1<0)
				$returnMessage:=This:C1470.invalidInput
			Else 
				$result:=Square root:C539($1)
				$returnMessage:=This:C1470.success
			End if 
		Else 
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
Function cbrt
	SET REAL COMPARISON LEVEL:C623(10^-20)
	var $1,$num,$result : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	Case of 
		: (Count parameters:C259=1)
			$num:=$1
			$result:=$num^(1/3)
			$returnMessage:=This:C1470.success
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		Else 
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
Function hypot
	var $1,$2,$result : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	$result:=0
	Case of 
		: (Count parameters:C259<2)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=2)
			$result:=Square root:C539(($1^2)+($2^2))
			$returnMessage:=This:C1470.success
		Else 
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
Function pow
	var $1,$2,$result : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	
	Case of 
		: (Count parameters:C259=2)
			$result:=($1)^($2)
			$returnMessage:=This:C1470.success
		: (Count parameters:C259<2)
			$returnMessage:=This:C1470.missingParameters
		Else 
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
Function round
	var $1,$result : Real
	var $2 : Integer
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	Case of 
		: (Count parameters:C259<1)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			$result:=Round:C94($1;0)
			$returnMessage:=This:C1470.success
		: (Count parameters:C259=2)
			$result:=Round:C94($1;$2)
			$returnMessage:=This:C1470.success
		Else 
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
Function abs
	var $1,$result,$num : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			$num:=$1
			$result:=Abs:C99($num)
			$returnMessage:=This:C1470.success
		Else 
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
Function ceil
	SET REAL COMPARISON LEVEL:C623(10^-20)
	var $1,$num,$difference : Real
	var $result : Integer
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			$num:=$1
			$difference:=Dec:C9($num)
			Case of 
				: ($difference=0)
					$result:=$num
				Else 
					$result:=($num\1)+1
			End case 
			$returnMessage:=This:C1470.success
		Else 
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
	
	//Returns the largest integer less than or equal to x
Function floor
	var $result : Integer
	var $1,$num : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			$num:=$1
			$result:=Trunc:C95($1;0)
			$returnMessage:=This:C1470.success
		: (Count parameters:C259>1)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	//----------------------------------------------
	
Function cos
	var $1,$result,$radian,$degree : Real
	var $2,$isRadian : Boolean
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
			
		: (Count parameters:C259=1)
			$radian:=$1
			$result:=This:C1470.round(Cos:C18($radian);8).result
			$returnMessage:=This:C1470.success
			
		: (Count parameters:C259=2)
			$isRadian:=$2
			
			If ($isRadian)
				$radian:=$1
				$result:=This:C1470.round(Cos:C18($radian);8).result
				$returnMessage:=This:C1470.success
			Else 
				$degree:=$1
				$radian:=This:C1470.toRadian($degree)
				$result:=This:C1470.round(Cos:C18($radian);8).result
				$returnMessage:=This:C1470.success
			End if 
			
		: (Count parameters:C259>2)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
Function tan
	var $0,$1,$result,$radian,$degree : Real
	var $2,$isRadian : Boolean
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
			
		: (Count parameters:C259=1)
			$radian:=$1
			$result:=This:C1470.round(Tan:C19($radian);8).result
			$returnMessage:=This:C1470.success
			
		: (Count parameters:C259=2)
			$isRadian:=$2
			
			If ($isRadian)
				$radian:=$1
				$result:=This:C1470.round(Tan:C19($radian);8).result
				$returnMessage:=This:C1470.success
			Else 
				$degree:=$1
				$radian:=This:C1470.toRadian($degree)
				$result:=This:C1470.round(Tan:C19($radian);8).result
				$returnMessage:=This:C1470.success
			End if 
			
		: (Count parameters:C259>2)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
	
	
Function sin
	SET REAL COMPARISON LEVEL:C623(10^-200)
	var $0,$1,$result,$radian,$degree : Real
	var $2,$isRadian : Boolean
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
			
		: (Count parameters:C259=1)
			$radian:=$1
			$result:=This:C1470.round(Sin:C17($radian);8).result
			$returnMessage:=This:C1470.success
			
		: (Count parameters:C259=2)
			$isRadian:=$2
			
			If ($isRadian)
				$radian:=$1
				$result:=This:C1470.round(Sin:C17($radian);8).result
				$returnMessage:=This:C1470.success
			Else 
				$degree:=$1
				$radian:=This:C1470.toRadian($degree)
				$result:=This:C1470.round(Sin:C17($radian);8).result
				$returnMessage:=This:C1470.success
			End if 
			
		: (Count parameters:C259>2)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
	
	
Function exp
	SET REAL COMPARISON LEVEL:C623(10^-20)
	var $1,$result : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			$result:=Exp:C21($1)
			$returnMessage:=This:C1470.success
		: (Count parameters:C259>1)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
Function log
	SET REAL COMPARISON LEVEL:C623(10^-20)
	var $1,$result : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			$result:=Log:C22($1)
			$returnMessage:=This:C1470.success
		: (Count parameters:C259>1)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
Function random
	var $1,$2,$result,$vStart,$vEnd : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	Case of 
		: (Count parameters:C259=0)
			$result:=(Random:C100%(32767))/32767
			$returnMessage:=This:C1470.success
		: (Count parameters:C259=1)
			
			Case of 
				: ($1<0)
					$returnMessage:=This:C1470.invalidInput
				Else 
					$vStart:=0
					$vEnd:=$1
					$result:=(Random:C100%($vEnd-$vStart+1))+$vStart
					$returnMessage:=This:C1470.success
			End case 
			
		: (Count parameters:C259=2)
			Case of 
				: (($1<0) | ($2<0))
					$returnMessage:=This:C1470.invalidInput
				Else 
					$vStart:=$1
					$vEnd:=$2
					$result:=(Random:C100%($vEnd-$vStart+1))+$vStart
					$returnMessage:=This:C1470.success
			End case 
		: (Count parameters:C259>2)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
	
Function toRadians
	var $0,$1,$radian,$degree : Real
	$degree:=$1
	$radian:=$degree/Radian:K30:3
	$0:=$radian
	
Function toDegrees
	var $0,$1,$radian,$degree : Real
	$radian:=$1
	$degree:=$radian/Degree:K30:2
	$0:=$degree
	
Function sign
	var $1,$num,$result : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	$num:=$1
	
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			Case of 
				: ($num=0)
					$result:=0
				: ($num>0)
					$result:=1
				: ($num<0)
					$result:=-1
			End case 
			$returnMessage:=This:C1470.success
		: (Count parameters:C259>1)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
	//copysign(x, y) Returns x with the sign of y
Function copySign
	var $1,$2,$result,$num1,$num2 : Real
	var $0,$returnObject : Object
	var $returnMessage : Text
	$num1:=$1
	$num2:=$2
	
	Case of 
		: (Count parameters:C259<2)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=2)
			Case of 
				: (($num1<0) & ($num2<0))
					$result:=$num1
				: (($num1>=0) & ($num2<0))
					$result:=$num1*-1
				: (($num1>=0) & ($num2>=0))
					$result:=$num1
				: (($num1<0) & ($num2>=0))
					$result:=$num1*-1
			End case 
			$returnMessage:=This:C1470.success
		: (Count parameters:C259>2)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
	
	
Function max
	var $1,$result : Real
	C_REAL:C285({$2})
	var $numParameters,$i : Integer
	var $collection : Collection
	var $returnMessage : Text
	var $0,$returnObject : Object
	
	$collection:=New collection:C1472
	$numParameters:=Count parameters:C259
	$result:=0
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259>0)
			For ($i;1;$numParameters)
				$collection.push(${$i})
			End for 
			$result:=$collection.max()
			$returnMessage:=This:C1470.success
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
	
	//Function factorial
	//C_LONGINT($0;$1;$result;$num)
	//var $statusMessage,$function : Text
	//$num:=$1
	//$result:=0
	
	//Case of 
	//: ($num<0)
	//$statusMessage:=This.invalidInput
	//$result:=-1
	//Else 
	//$result:=1
	//While ($num>1)
	//$result:=$result*$num
	//$num:=$num-1
	//End while 
	//$statusMessage:=This.success
	//End case 
	//$function:=This.functionToText("factorial";String($1))
	//This.consoleLog($function;$statusMessage;$result)
	//$0:=$result
	
Function factorial
	var $1,$num,$result : Integer
	var $0,$returnObject : Object
	var $returnMessage : Text
	
	$num:=$1
	$result:=0
	
	Case of 
		: (Count parameters:C259=0)
			$returnMessage:=This:C1470.missingParameters
		: (Count parameters:C259=1)
			Case of 
				: ($num<0)
					$returnMessage:=This:C1470.invalidInput
				Else 
					$result:=1
					While ($num>1)
						$result:=$result*$num
						$num:=$num-1
					End while 
					$returnMessage:=This:C1470.success
			End case 
		: (Count parameters:C259>1)
			$returnMessage:=This:C1470.unexpectedParameter
	End case 
	
	$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
	$0:=$returnObject
	
	
	//Function factorialMemConsole
	//C_LONGINT($0;$1;$result;$num)
	//var $statusMessage,$function : Text
	//$num:=$1
	//$result:=0
	
	//Case of 
	//: ($num<0)
	//$statusMessage:=This.invalidInput
	//$result:=-1
	//Else 
	//$result:=1
	//While ($num>1)
	//$result:=$result*$num
	//$num:=$num-1
	//End while 
	//$statusMessage:=This.success
	//End case 
	//$function:=This.functionToText("factorial";String($1))
	//consoleLog($function;$statusMessage;$result)
	//$0:=$result
	
	
	// HELPER FUNCTIONS
	//Function consoleLog
	////consoleLog( function with parameters, Result, Status Message)
	
	//var $1,$2,$textResult,$function,$statusMessage : Text
	//var $3 : Real
	//var $logMessage : Object
	
	//$function:=$1
	//$textResult:=String($3)
	//$statusMessage:=$2
	
	//$logMessage:=ds.MathLog.new()
	//$logMessage.date:=Current date
	//$logMessage.time:=Current time
	//$logMessage.function:=$function
	//$logMessage.result:=$textResult
	//$logMessage.message:=$statusMessage
	//$logMessage.save()
	
	//Function functionToText
	////functionToText($funcName; $param1; $param2; $param3)
	
	//var $1,$0,$result,$funcName,$param1,$param2,$param3 : Text
	//var $2,$3,$4 : Text
	//$funcName:=$1
	//$param1:=String($2)
	//$param2:=String($3)
	//$param3:=String($4)
	
	//Case of 
	//: (Count parameters=1)
	//$result:=$funcName+"()"
	//: (Count parameters=2)
	//$result:=$funcName+"("+$param1+")"
	//: (Count parameters=3)
	//$result:=$funcName+"("+$param1+";"+$param2+")"
	//: (Count parameters=4)
	//$result:=$funcName+"("+$param1+";"+$param2+";"+$param3+")"
	//End case 
	//$0:=$result
	
	//Function max
	//var $1,$0,$result : Real
	//C_REAL({$2})
	//var $numParameters,$i : Integer
	//var $collection : Collection
	//var $statusMessage,$function,$textParameters : Text
	//$collection:=New collection
	//$numParameters:=Count parameters
	//Case of 
	//: ($numParameters>0)
	//For ($i;1;$numParameters)
	//$collection.push(${$i})
	//$textParameters:=$textParameters+String(${$i})
	//If ($i#$numParameters)
	//$textParameters:=$textParameters+";"
	//End if 
	//End for 
	//$statusMessage:=This.success
	//$function:=This.functionToText("max";$textParameters)
	//Else 
	//$statusMessage:=This.ParametersMissing
	//$function:=This.functionToText("max";String($1))
	//End case 
	//$result:=$collection.max()
	//This.consoleLog($function;$statusMessage;$result)
	//$0:=$result
	
	
	//Function print
	//var $1 : Real
	//ALERT(String($1))
	
	//Function toString
	//var $1 : Real
	//var $0 : Text
	//$0:=String($1)
	
	//Function int
	//var $1 : Real
	//var $0 : Integer
	//$0:=Int($1)
	
	
	// ASSERT Library https://www.tutorialspoint.com/junit/junit_using_assertion.htm
	