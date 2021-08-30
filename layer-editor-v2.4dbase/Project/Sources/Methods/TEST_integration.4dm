//%attributes = {}
$path_s:=Folder:C1567(fk database folder:K87:14).folder("Samples").file("photo.jpg").platformPath

READ PICTURE FILE:C678($path_s;$image)

$ctx:=New object:C1471  //all values are optional; see LEv2_OPEN_EDITOR for default settings

$ctx.image:=$image  //the image to display in the editor
$ctx.width:=800  //width of the editor
$ctx.height:=600  //height of the editor
$ctx.debug:=False:C215  //fill the SVG layer background blue 
$ctx.lineColor:=1  //red, amber, green
$ctx.stdDeviation:=20  //the blur effect
$ctx.lineColor:=1
$ctx.lineWidth:=20
$ctx.lineOpacity:=0.9

  //callbacks; "This" = "Form"
$ctx.onLoad:=Formula:C1597(TEST_integration_onLoad )
$ctx.onUnload:=Formula:C1597(TEST_integration_onUnload )

LEv2_OPEN_EDITOR ($ctx)

/*

tips

press command+option+X for XML dump in clipboard
press command+option+I for processing information

*/