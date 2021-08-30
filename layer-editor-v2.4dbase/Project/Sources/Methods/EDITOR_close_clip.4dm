//%attributes = {"invisible":true}
C_OBJECT:C1216($1;$ctx)

$ctx:=$1

C_REAL:C285($x;$y;$width;$height)
DOM GET XML ATTRIBUTE BY NAME:C728(Form:C1466.object.dom;"x";$x)
DOM GET XML ATTRIBUTE BY NAME:C728(Form:C1466.object.dom;"y";$y)
DOM GET XML ATTRIBUTE BY NAME:C728(Form:C1466.object.dom;"width";$width)
DOM GET XML ATTRIBUTE BY NAME:C728(Form:C1466.object.dom;"height";$height)

$ctx.x:=$x*Form:C1466.info.scale
$ctx.y:=$y*Form:C1466.info.scale
$ctx.width:=$width*Form:C1466.info.scale
$ctx.height:=$height*Form:C1466.info.scale
$ctx.imageData:=Form:C1466.imageData
$ctx.scaledWidth:=Form:C1466.info.scaledWidth
$ctx.scaledHeight:=Form:C1466.info.scaledHeight
$ctx.stdDeviation:=Form:C1466.stdDeviation
$ctx.ScreenWidth:=Screen width:C187
$ctx.ScreenHeight:=Screen height:C188
$ctx.maskImage:=Form:C1466.maskImage

$ctx.mode:="end.rect.clip"

$0:=Form:C1466