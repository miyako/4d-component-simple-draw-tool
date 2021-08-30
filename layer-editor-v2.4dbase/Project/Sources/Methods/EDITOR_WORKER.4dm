//%attributes = {"invisible":true,"preemptive":"capable"}
C_OBJECT:C1216($1)

$ctx:=$1

Case of 
	: ($ctx.mode="start.polyline")
		
	: ($ctx.mode="draw.polyline")
		
	: ($ctx.mode="end.polyline")
		
	: ($ctx.mode="start.rect.clip")
		
	: ($ctx.mode="draw.rect.clip")
		
	: ($ctx.mode="end.rect.clip")
		
		  //reduce resolution for stronger blur
		
		$clip:=Clip_create_rect ($ctx.imageData;$ctx.scaledWidth;$ctx.scaledHeight;$ctx.stdDeviation;$ctx.x;$ctx.y;$ctx.width;$ctx.height)
		
		C_REAL:C285($width;$height)
		PICTURE PROPERTIES:C457($clip;$width;$height)
		
		C_REAL:C285($scaleH;$scaleV;$scale)
		$scaleH:=$ctx.ScreenWidth/$width
		$scaleV:=$ctx.ScreenHeight/$height
		If ($scaleH<$scaleV)
			$scale:=$scaleV
		Else 
			$scale:=$scaleH
		End if 
		
		TRANSFORM PICTURE:C988($clip;Scale:K61:2;$scale;$scale)
		
		If ($ctx.maskImage#Null:C1517)
			C_PICTURE:C286($maskImage)
			$maskImage:=$ctx.maskImage
			PICTURE PROPERTIES:C457($clip;$width;$height)
			C_REAL:C285($scaleH;$scaleV;$scale)
			$scaleH:=$ctx.ScreenWidth/$width
			$scaleV:=$ctx.ScreenHeight/$height
			If ($scaleH<$scaleV)
				$scale:=$scaleV
			Else 
				$scale:=$scaleH
			End if 
			TRANSFORM PICTURE:C988($maskImage;Scale:K61:2;$scale;$scale)
			COMBINE PICTURES:C987($maskImage;$clip;Superimposition:K61:10;$maskImage)
			CONVERT PICTURE:C1002($maskImage;".png")
		Else 
			$maskImage:=$clip
		End if 
		
		$ctx.clip:=$clip
		$ctx.maskImage:=$maskImage
		
End case 

CALL FORM:C1391($ctx.window;$ctx.method;$ctx)