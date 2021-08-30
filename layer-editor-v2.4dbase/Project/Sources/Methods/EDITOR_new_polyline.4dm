//%attributes = {"invisible":true}
C_OBJECT:C1216($1)

$ctx:=$1

$object:=Form:C1466.newObject()

$type:="polyline"

DOM SET XML ATTRIBUTE:C866($object.objectDom;\
"type";$type;\
"id";$object.ref;\
"class";$object.class;\
"fill";$ctx.style.fill;\
"fill-opacity";$ctx.style.fillOpacity;\
"stroke";$ctx.style.stroke;\
"stroke-width";$ctx.style.strokeWidth;\
"stroke-linecap";$ctx.style.strokeLinecap;\
"stroke-linejoin";$ctx.style.strokeLinejoin;\
"stroke-opacity";$ctx.style.strokeOpacity)

$object.points:=New collection:C1472($ctx.mouseX;$ctx.mouseY).join(",")

$object.dom:=DOM Create XML element:C865($ctx.svgDom;\
$type;\
"id";$object.id;\
"class";$object.class;\
"points";$object.points;\
"editor:object-type";$type;\
"editor:object-id";$object.id;\
"editor:x";$ctx.mouseX;"editor:y";$ctx.mouseY;\
"editor:width";0;"editor:height";0;\
"editor:tx";$ctx.mouseX;"editor:ty";$ctx.mouseY;\
"editor:sx";0;"editor:sy";0;\
"editor:cx";$ctx.mouseX;"editor:cy";$ctx.mouseY;\
"editor:r";0;\
"shape-rendering";"geometricPrecision")

$style:="."+$object.class+" {"+New collection:C1472(\
"fill:";$ctx.style.fill;";";\
"fill-opacity:";$ctx.style.fillOpacity;";";\
"stroke:";$ctx.style.stroke;";";\
"stroke-width:";$ctx.style.strokeWidth;";";\
"stroke-linecap:";$ctx.style.strokeLinecap;";";\
"stroke-linejoin:";$ctx.style.strokeLinejoin;";";\
"stroke-opacity:";$ctx.style.strokeOpacity).join()+"}"

$object.style:=DOM Create XML element:C865($ctx.svgDefs;"style";"type";"text/css";"id";$object.class)

DOM SET XML ELEMENT VALUE:C868($object.style;$style;*)  //CDATA

$0:=$object