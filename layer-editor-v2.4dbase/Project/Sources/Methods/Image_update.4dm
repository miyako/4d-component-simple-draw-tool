//%attributes = {"invisible":true,"preemptive":"incapable"}
C_PICTURE:C286($svgImage)
SVG EXPORT TO PICTURE:C1017(Form:C1466.svgDom;$svgImage;Get XML data source:K45:16)

$scaleH:=Screen width:C187/Form:C1466.info.imageOriginalWidth
$scaleV:=Screen height:C188/Form:C1466.info.imageOriginalHeight

C_REAL:C285($scale)
If ($scaleH<$scaleV)
	$scale:=$scaleV
Else 
	$scale:=$scaleH
End if 
TRANSFORM PICTURE:C988($svgImage;Scale:K61:2;$scale;$scale)

Form:C1466.info.svgImageSize:=Picture size:C356($svgImage)  //0 if get xml data source
Form:C1466.svgImage:=$svgImage

$0:=Form:C1466