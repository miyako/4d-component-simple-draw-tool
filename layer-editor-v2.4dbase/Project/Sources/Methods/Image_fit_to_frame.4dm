//%attributes = {"invisible":true,"preemptive":"incapable"}
$image:=Form:C1466.image

C_REAL:C285($width;$height)
PICTURE PROPERTIES:C457($image;$width;$height)

Form:C1466.info.imageOriginalWidth:=$width
Form:C1466.info.imageOriginalHeight:=$height

ARRAY TEXT:C222($formats;0)
GET PICTURE FORMATS:C1406($image;$formats)
OB SET ARRAY:C1227(Form:C1466.info;"imageFormats";$formats)
Form:C1466.info.imageFileName:=Get picture file name:C1171($image)
Form:C1466.info.imageSize:=Picture size:C356($image)
Form:C1466.info.thumbnail:=New object:C1471
Form:C1466.info.thumbnail.scale:=1

$thumbnail:=$image

  //experimental; reduce thumbnail resolution
If (Form:C1466.resolution>0)
	If ($width<$height)  //portrait
		If ($height>Form:C1466.resolution)
			Form:C1466.info.thumbnail.scale:=Form:C1466.resolution/$height
		End if 
	Else   //landscape
		If ($width>Form:C1466.resolution)
			Form:C1466.info.thumbnail.scale:=Form:C1466.resolution/$width
		End if 
	End if 
	If (Form:C1466.info.thumbnail.scale#1)
		TRANSFORM PICTURE:C988($thumbnail;Scale:K61:2;Form:C1466.info.thumbnail.scale;Form:C1466.info.thumbnail.scale)
		CONVERT PICTURE:C1002($thumbnail;".png")
	End if 
End if 

PICTURE PROPERTIES:C457($thumbnail;$width;$height)
Form:C1466.info.thumbnail.width:=$width
Form:C1466.info.thumbnail.height:=$height
Form:C1466.info.thumbnail.size:=Picture size:C356($thumbnail)
Form:C1466.info.thumbnail.image:=$thumbnail

C_BLOB:C604($imageData)
PICTURE TO BLOB:C692($thumbnail;$imageData;".png")
C_TEXT:C284($data)
BASE64 ENCODE:C895($imageData;$data)
Form:C1466.imageData:=$data

$scaleH:=Screen width:C187/$width
$scaleV:=Screen height:C188/$height

C_REAL:C285($scale)
If ($scaleH<$scaleV)
	$scale:=$scaleV
Else 
	$scale:=$scaleH
End if 
TRANSFORM PICTURE:C988($image;Scale:K61:2;$scale;$scale)

PICTURE PROPERTIES:C457($image;$width;$height)

Form:C1466.info.imageInternalWidth:=$width
Form:C1466.info.imageInternalHeight:=$height

Form:C1466.image:=$image

If (Value type:C1509(Form:C1466.clips)#Is collection:K8:32)
	Form:C1466.clips:=New collection:C1472
End if 

$0:=Form:C1466