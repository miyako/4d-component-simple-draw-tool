//%attributes = {"invisible":true,"shared":true,"preemptive":"capable"}
Case of 
	: (Count parameters:C259=0)
		
		  //call as close box method for open window
		
	: (Count parameters:C259=1)
		
		CALL WORKER:C1389(1;Current method name:C684;$1;New object:C1471)
		
	: (Count parameters:C259=2)
		
		C_OBJECT:C1216($1;$2)
		
		If ($1#Null:C1517)
			$ctx:=$1
		Else 
			$ctx:=New object:C1471
		End if 
		
		C_PICTURE:C286($image)
		$defaultCtx:=New object:C1471
		$defaultCtx.image:=$image
		$defaultCtx.width:=800
		$defaultCtx.height:=600
		$defaultCtx.debug:=False:C215
		$defaultCtx.lineColor:=1
		$defaultCtx.stdDeviation:=9
		$defaultCtx.onLoad:=Formula:C1597(IDLE:C311)
		$defaultCtx.onUnload:=Formula:C1597(IDLE:C311)
		$defaultCtx.lineWidth:=9
		$defaultCtx.lineOpacity:=0.9
		$defaultCtx.resolution:=0
		
		For each ($prop;$defaultCtx)
			If (Value type:C1509($defaultCtx[$prop])#Value type:C1509($ctx[$prop]))
				$ctx[$prop]:=$defaultCtx[$prop]
			End if 
		End for each 
		
		$width:=$ctx.width
		$height:=$ctx.height
		
		  //%T-
		$ctx.INIT:=Formula:C1597(CALL FORM:C1391(Current form window:C827;"EDITOR_INIT"))
		
		C_REAL:C285($left;$top;$right;$bottom)
		$left:=(Screen width:C187/2)-($width/2)
		$top:=(Screen height:C188/2)-($height/2)
		$right:=(Screen width:C187/2)+($width/2)
		$bottom:=(Screen height:C188/2)+($height/2)
		
		If ($ctx.onOpenWindow#Null:C1517)
			$window:=$ctx.onOpenWindow.call($ctx)
		Else 
			$window:=Open window:C153($left;$top;$right;$bottom;Plain window:K34:13;"";Current method name:C684)
		End if 
		
		DIALOG:C40("Editor";$ctx;*)
		  //%T+
		
End case 