//%attributes = {"invisible":true}
C_OBJECT:C1216($1;$ctx)

$ctx:=$1

C_TEXT:C284($points)
DOM GET XML ATTRIBUTE BY NAME:C728(Form:C1466.object.dom;"points";$points)
$point:=New collection:C1472($ctx.mouseX;$ctx.mouseY).join(",")
DOM SET XML ATTRIBUTE:C866(Form:C1466.object.dom;"points";$points+" "+$point)

$0:=Form:C1466