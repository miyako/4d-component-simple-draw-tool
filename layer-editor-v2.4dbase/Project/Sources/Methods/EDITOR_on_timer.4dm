//%attributes = {"invisible":true,"preemptive":"incapable"}
$ctx:=Form:C1466.newEvent()

$noEvent:=False:C215

If ($ctx.mouseDown)
	
	If (Form:C1466.mouseX=$ctx.mouseX) & (Form:C1466.mouseY=$ctx.mouseY)
		$noEvent:=True:C214  //did not move mouse pointer
	End if 
	
Else 
	
	SET TIMER:C645(0)
	
	Case of 
		: (Form:C1466.mode="draw.polyline")
			
			Form:C1466.closePolyline($ctx)
			
		: (Form:C1466.mode="draw.rect.clip")
			
			Form:C1466.closeClip($ctx)
			
	End case 
	
End if 

If (Not:C34($noEvent))
	
	CALL WORKER:C1389(Form:C1466.workerName;Form:C1466.workerMethod;$ctx)
	
End if 

$0:=Form:C1466