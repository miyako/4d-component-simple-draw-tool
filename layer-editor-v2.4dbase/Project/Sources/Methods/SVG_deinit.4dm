//%attributes = {"invisible":true,"preemptive":"incapable"}
If (Form:C1466.svgDom#Null:C1517)
	C_TEXT:C284($xml)
	DOM EXPORT TO VAR:C863(Form:C1466.svgDom;$xml)
	Form:C1466.svg:=$xml
	DOM CLOSE XML:C722(Form:C1466.svgDom)
	OB REMOVE:C1226(Form:C1466;"svgDom")
	OB REMOVE:C1226(Form:C1466;"objects")
	OB REMOVE:C1226(Form:C1466;"svgDefs")
	$image:=Form:C1466.image
	TRANSFORM PICTURE:C988($image;Reset:K61:1)
	Form:C1466.image:=$image
	OB REMOVE:C1226(Form:C1466;"object")
End if 

$0:=Form:C1466