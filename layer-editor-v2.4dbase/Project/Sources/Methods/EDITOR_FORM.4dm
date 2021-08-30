//%attributes = {"invisible":true,"preemptive":"incapable"}
C_OBJECT:C1216($1)

$ctx:=$1

Case of 
	: ($ctx.mode="start.polyline")
		
		Form:C1466.startPolyline($ctx).updateCanvas()
		
	: ($ctx.mode="draw.polyline")
		
		Form:C1466.drawPolyline($ctx).updateCanvas()
		
	: ($ctx.mode="end.polyline")
		
		Form:C1466.endPolyline($ctx).updateCanvas()
		
	: ($ctx.mode="start.rect.clip")
		
		Form:C1466.startClip($ctx).updateCanvas()
		
	: ($ctx.mode="draw.rect.clip")
		
		Form:C1466.drawClip($ctx).updateCanvas()
		
	: ($ctx.mode="end.rect.clip")
		
		Form:C1466.endClip($ctx).updateCanvas()
		
End case 