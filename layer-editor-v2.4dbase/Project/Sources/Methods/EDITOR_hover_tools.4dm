//%attributes = {"invisible":true}
$event:=FORM Event:C1606

Case of 
	: ($event.code=On Mouse Enter:K2:33)
		
		OBJECT SET FORMAT:C236(*;"clear";";;path:/RESOURCES/Images/clear.svg;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"reset";";;path:/RESOURCES/Images/reset.svg;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"lineColor1";";;path:/RESOURCES/Images/color-1.svg;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"lineColor2";";;path:/RESOURCES/Images/color-2.svg;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"lineColor3";";;path:/RESOURCES/Images/color-3.svg;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"clipRect";";;path:/RESOURCES/Images/clip-rect.svg;4;1;0;4;0;0;0;0;0;4")
		
	: ($event.code=On Mouse Leave:K2:34)
		
		OBJECT SET FORMAT:C236(*;"clear";";;-;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"reset";";;-;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"lineColor1";";;-;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"lineColor2";";;-;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"lineColor3";";;-;4;1;0;4;0;0;0;0;0;4")
		OBJECT SET FORMAT:C236(*;"clipRect";";;-;4;1;0;4;0;0;0;0;0;4")
		
End case 

$0:=Form:C1466