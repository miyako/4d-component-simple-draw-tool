//%attributes = {"invisible":true,"preemptive":"incapable"}
$ctx:=Form:C1466.newEvent()

  //record click point
Form:C1466.clickX:=$ctx.mouseX
Form:C1466.clickY:=$ctx.mouseY
Form:C1466.mouseX:=$ctx.mouseX
Form:C1466.mouseY:=$ctx.mouseY

$ctx.mode:=Form:C1466.mode

Case of 
	: ($ctx.mode="start.polyline")
		
		$ctx.style:=New object:C1471
		$ctx.style.fill:="none"
		$ctx.style.fillOpacity:=0
		$ctx.style.stroke:=Form:C1466.style.polyline.stroke
		$ctx.style.strokeOpacity:=Form:C1466.style.polyline.strokeOpacity
		$ctx.style.strokeWidth:=Form:C1466.style.polyline.strokeWidth
		$ctx.style.strokeLinecap:=Form:C1466.style.polyline.strokeLinecap
		$ctx.style.strokeLinejoin:=Form:C1466.style.polyline.strokeLinejoin
		$ctx.object:=Form:C1466.newPolyLine($ctx)
		
	: ($ctx.mode="start.rect.clip")
		
		  //temp rect, nothing to create here
		
End case 

EDITOR_FORM ($ctx)

$0:=Form:C1466