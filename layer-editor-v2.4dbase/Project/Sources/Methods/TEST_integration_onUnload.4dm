//%attributes = {"invisible":true}
C_OBJECT:C1216($ctx)

If (False:C215)
	
	  //store these in the database or whatever
	
	$ctx:=New object:C1471
	$ctx.clips:=This:C1470.clips  //the clip images
	$ctx.svg:=This:C1470.svg  //the drawing layer
	$ctx.image:=This:C1470.image  //the image displayed in the editor
	
	LEv2_OPEN_EDITOR ($ctx)
	
End if 