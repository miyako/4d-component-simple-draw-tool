//%attributes = {"invisible":true}
$countObjects:=DOM Count XML elements:C726(Form:C1466.objects;"object")

For ($i;1;$countObjects)
	$dom:=DOM Find XML element by ID:C1010(Form:C1466.svgDom;"object-"+String:C10($i))
	DOM REMOVE XML ELEMENT:C869($dom)
	$dom:=DOM Find XML element by ID:C1010(Form:C1466.svgDom;"class-"+String:C10($i))
	DOM REMOVE XML ELEMENT:C869($dom)
	$dom:=DOM Find XML element by ID:C1010(Form:C1466.svgDom;"ref-"+String:C10($i))
	DOM REMOVE XML ELEMENT:C869($dom)
	
End for 

$0:=Form:C1466