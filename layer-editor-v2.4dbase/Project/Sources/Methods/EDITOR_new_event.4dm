//%attributes = {"invisible":true}
Form:C1466.getImageCoordinates()

$ctx:=New object:C1471("event";FORM Event:C1606)

GET MOUSE:C468($mouseX;$mouseY;$mouseDown)  //form local coordinates

$ctx.mouseDown:=Bool:C1537($mouseDown)

  //convert xy
$ctx.mouseX:=($mouseX-Form:C1466.info.marginH)/Form:C1466.info.scale
$ctx.mouseY:=($mouseY-Form:C1466.info.marginV)/Form:C1466.info.scale

  //doms
$ctx.svgDom:=Form:C1466.svgDom
$ctx.svgDefs:=Form:C1466.svgDefs

$ctx.window:=Form:C1466.window
$ctx.method:=Form:C1466.workerMethodForm
$ctx.mode:=Form:C1466.mode

$0:=$ctx