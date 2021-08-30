//%attributes = {"invisible":true}
C_LONGINT:C283($1)

Form:C1466.lineColor:=$1
Form:C1466.mode:="start.polyline"

OBJECT SET ENABLED:C1123(*;"clipRect";True:C214)

Case of 
	: (Form:C1466.lineColor=1)
		
		OBJECT SET ENABLED:C1123(*;"lineColor1";False:C215)
		OBJECT SET ENABLED:C1123(*;"lineColor2";True:C214)
		OBJECT SET ENABLED:C1123(*;"lineColor3";True:C214)
		
		Form:C1466.style.polyline.stroke:="#FF6259"
		
	: (Form:C1466.lineColor=2)
		
		OBJECT SET ENABLED:C1123(*;"lineColor1";True:C214)
		OBJECT SET ENABLED:C1123(*;"lineColor2";False:C215)
		OBJECT SET ENABLED:C1123(*;"lineColor3";True:C214)
		
		Form:C1466.style.polyline.stroke:="#FFBE30"
		
	: (Form:C1466.lineColor=3)
		
		OBJECT SET ENABLED:C1123(*;"lineColor1";True:C214)
		OBJECT SET ENABLED:C1123(*;"lineColor2";True:C214)
		OBJECT SET ENABLED:C1123(*;"lineColor3";False:C215)
		
		Form:C1466.style.polyline.stroke:="#28CA41"
		
End case 

$0:=Form:C1466