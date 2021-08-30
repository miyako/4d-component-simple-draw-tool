//%attributes = {"invisible":true}
C_OBJECT:C1216($1;$ctx)

$ctx:=$1

If ($ctx.mouseX>Form:C1466.clickX)
	$x:=Form:C1466.clickX
Else 
	$x:=$ctx.mouseX
End if 

If ($ctx.mouseY>Form:C1466.clickY)
	$y:=Form:C1466.clickY
Else 
	$y:=$ctx.mouseY
End if 

$width:=Abs:C99(Form:C1466.clickX-$ctx.mouseX)
$height:=Abs:C99(Form:C1466.clickY-$ctx.mouseY)

DOM SET XML ATTRIBUTE:C866(Form:C1466.object.dom;"x";$x;"y";$y;"width";$width;"height";$height)

$0:=Form:C1466