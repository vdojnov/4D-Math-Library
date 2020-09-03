//%attributes = {}
// REMOVE $0 FROM C_REAL()
var $0,$returnObject : Object
var $returnMessage : Text

$returnMessage:=This:C1470.success

$returnMessage:=This:C1470.missingParameters

$returnObject:=New object:C1471("result";$result;"statusMessage";$returnMessage)
$0:=$returnObject

// TEST
$ObjResult:=Math.sum()
ASSERT:C1129(($ObjResult.result=0) & ($ObjResult.statusMessage="Error: Missing parameters");$ObjResult.statusMessage)


//alert(string(square root(4)))

Case of 
	: (Count parameters:C259=0)
		$returnMessage:=This:C1470.
	: (Count parameters:C259=1)
		
		$returnMessage:=This:C1470.
	: (Count parameters:C259>1)
		$returnMessage:=This:C1470.
End case 