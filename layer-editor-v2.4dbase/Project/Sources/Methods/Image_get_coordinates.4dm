//%attributes = {"invisible":true,"preemptive":"incapable"}
$image:=Form:C1466.image

C_REAL:C285($containerWidth;$containerHeight)
C_REAL:C285($x;$y;$right;$bottom)
OBJECT GET COORDINATES:C663(*;"Image";$x;$y;$right;$bottom)
$containerWidth:=$right-$x
$containerHeight:=$bottom-$y

C_REAL:C285($scaleH;$scaleV)
$scaleH:=$containerWidth/Form:C1466.info.imageOriginalWidth
$scaleV:=$containerHeight/Form:C1466.info.imageOriginalHeight
C_REAL:C285($scale)
If ($scaleH>$scaleV)
	$scale:=$scaleV
Else 
	$scale:=$scaleH
End if 
Form:C1466.info.scale:=$scale

Form:C1466.info.scaledWidth:=$scale*Form:C1466.info.imageOriginalWidth
Form:C1466.info.scaledHeight:=$scale*Form:C1466.info.imageOriginalHeight

Form:C1466.info.marginH:=0
Form:C1466.info.marginV:=0

If (Form:C1466.info.scaledHeight<$containerHeight) & (Form:C1466.info.scaledWidth=($containerWidth))
	Form:C1466.info.marginV:=($containerHeight-Form:C1466.info.scaledHeight)/2
End if 

If (Form:C1466.info.scaledWidth<$containerWidth) & (Form:C1466.info.scaledHeight=$containerHeight)
	Form:C1466.info.marginH:=($containerWidth-Form:C1466.info.scaledWidth)/2
End if 

$0:=Form:C1466