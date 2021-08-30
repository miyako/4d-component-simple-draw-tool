//%attributes = {"invisible":true}
$countObjects:=DOM Count XML elements:C726(Form:C1466.objects;"object")

$0:=New object:C1471("id";"object-"+String:C10($countObjects+1);\
"class";"class-"+String:C10($countObjects+1);\
"ref";"ref-"+String:C10($countObjects+1);\
"objectDom";DOM Create XML element:C865(Form:C1466.objects;"object"))