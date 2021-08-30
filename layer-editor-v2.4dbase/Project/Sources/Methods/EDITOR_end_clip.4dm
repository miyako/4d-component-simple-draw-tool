//%attributes = {"invisible":true}
C_OBJECT:C1216($1;$ctx)

$ctx:=$1

DOM REMOVE XML ELEMENT:C869(Form:C1466.object.dom)  //"rect.clip"

Form:C1466.clips.push($ctx.clip)

$maskImage:=$ctx.maskImage

Form:C1466.maskImage:=$maskImage

Form:C1466.mode:="start.rect.clip"

Form:C1466.toggleResetTool()

$0:=Form:C1466

C_REAL:C285($width;$height)
PICTURE PROPERTIES:C457($maskImage;$width;$height)

Form:C1466.info.maskInternalWidth:=$width
Form:C1466.info.maskInternalHeight:=$height