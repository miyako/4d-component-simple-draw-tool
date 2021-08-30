$event:=FORM Event:C1606

Case of 
	: ($event.code=On Load:K2:1)
		
/*
		
when a form is opened via open window
object get coordinates returns the positions in form definition
		
*/
		
		Form:C1466.INIT()
		
	: ($event.code=On Close Box:K2:21)
		
		ACCEPT:C269
		
	: ($event.code=On Unload:K2:2)
		
		Form:C1466.DEINIT()
		
	: ($event.code=On Timer:K2:25)
		
		Form:C1466.onTimer()
		
End case 