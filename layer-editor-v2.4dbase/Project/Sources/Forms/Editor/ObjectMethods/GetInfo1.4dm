If (Form event code:C388=On Clicked:K2:4)
	
	C_TEXT:C284($xml)
	DOM EXPORT TO VAR:C863(Form:C1466.svgDom;$xml)
	SET TEXT TO PASTEBOARD:C523($xml)
	
End if 