//%attributes = {"invisible":true,"preemptive":"incapable"}
Form:C1466.deinitCanvas()

If (Value type:C1509(Form:C1466.svg)=Is text:K8:3)
	C_TEXT:C284($svg)
	$svg:=Form:C1466.svg
	ON ERR CALL:C155("SVG_onError")
	Form:C1466.svgDom:=DOM Parse XML variable:C720($svg)
	ON ERR CALL:C155("")
	If (OK=0)
		Form:C1466.svgDom:=Null:C1517
	Else 
		Form:C1466.svgDefs:=DOM Find XML element by ID:C1010(Form:C1466.svgDom;"defs")
		Form:C1466.objects:=DOM Find XML element by ID:C1010(Form:C1466.svgDom;"objects")
	End if 
End if 

If (Form:C1466.svgDom=Null:C1517)
	Form:C1466.svgDom:=DOM Create XML Ref:C861("svg";"http://www.w3.org/2000/svg";\
		"xmlns:svg";"http://www.w3.org/2000/svg";\
		"xmlns:editor";"http://www.4d.com/2021/editor";\
		"xmlns:xlink";"http://www.w3.org/1999/xlink")
	Form:C1466.svgDefs:=DOM Create XML element:C865(Form:C1466.svgDom;"defs";"id";"defs")
	Form:C1466.objects:=DOM Create XML element:C865(Form:C1466.svgDom;"editor:objects";"id";"objects")
End if 

DOM SET XML ATTRIBUTE:C866(Form:C1466.svgDom;"version";"1.1";\
"id";"svg";\
"width";Form:C1466.info.imageOriginalWidth;"height";Form:C1466.info.imageOriginalHeight;"viewport-fill-opacity";0)

If (Form:C1466.debug)
	DOM SET XML ATTRIBUTE:C866(Form:C1466.svgDom;"viewport-fill";"#aaaaFF";"viewport-fill-opacity";0.1)
End if 

Form:C1466.updateCanvas()

OBJECT SET VISIBLE:C603(*;"Image";True:C214)
OBJECT SET VISIBLE:C603(*;"SvgImage";True:C214)

If (Form:C1466.clips.length#0)
	$screenWidth:=Screen width:C187
	$screenHeight:=Screen height:C188
	C_PICTURE:C286($maskImage;$clip)
	C_REAL:C285($width;$height)
	C_REAL:C285($scaleH;$scaleV;$scale)
	For each ($clip;Form:C1466.clips)
		PICTURE PROPERTIES:C457($clip;$width;$height)
		$scaleH:=$screenWidth/$width
		$scaleV:=$screenHeight/$height
		If ($scaleH<$scaleV)
			$scale:=$scaleV
		Else 
			$scale:=$scaleH
		End if 
		TRANSFORM PICTURE:C988($clip;Scale:K61:2;$scale;$scale)
		COMBINE PICTURES:C987($maskImage;$clip;Superimposition:K61:10;$maskImage)
	End for each 
	CONVERT PICTURE:C1002($maskImage;".png")
	Form:C1466.maskImage:=$maskImage
End if 

Form:C1466.toggleResetTool().toggleClearTool()

$0:=Form:C1466