//%attributes = {"invisible":true}
C_OBJECT:C1216($1)

$ctx:=$1

$object:=New object:C1471  //Form.newObject()

$object.dom:=DOM Create XML element:C865(Form:C1466.svgDom;\
"rect";"id";"rect.clip";\
"x";0;"y";0;\
"width";0;"height";0;\
"shape-rendering";"crispEdges";\
"fill";"#444444";\
"fill-opacity";0.1;\
"stroke";"#444444";\
"stroke-width";1;\
"stroke-opacity";0.7)  //this dom is disposed later see EDITOR_end_clip

SET TIMER:C645(-1)
Form:C1466.mode:="draw.rect.clip"
Form:C1466.object:=$object

$0:=Form:C1466