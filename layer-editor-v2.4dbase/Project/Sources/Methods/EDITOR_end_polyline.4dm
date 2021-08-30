//%attributes = {"invisible":true}
C_OBJECT:C1216($1;$ctx)

$ctx:=$1

Form:C1466.mode:="start.polyline"

C_TEXT:C284($points)
DOM GET XML ATTRIBUTE BY NAME:C728(Form:C1466.object.dom;"points";$points)
DOM SET XML ATTRIBUTE:C866(Form:C1466.object.objectDom;"points";$points)

Form:C1466.toggleClearTool()

$0:=Form:C1466