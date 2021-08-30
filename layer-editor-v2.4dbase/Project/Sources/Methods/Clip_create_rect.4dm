//%attributes = {"invisible":true}
C_TEXT:C284($1)
C_REAL:C285(${2})

$image:=$1
$width:=$2
$height:=$3
$stdDeviation:=$4
$clipX:=$5
$clipY:=$6
$clipWidth:=$7
$clipHeight:=$8

$svg:=DOM Create XML Ref:C861("svg";"http://www.w3.org/2000/svg";\
"xmlns:svg";"http://www.w3.org/2000/svg";\
"xmlns:xlink";"http://www.w3.org/1999/xlink")

DOM SET XML ATTRIBUTE:C866($svg;"width";$width;"height";$height;"viewport-fill";"#aaaaFF";"viewport-fill-opacity";0)
$defs:=DOM Create XML element:C865($svg;"defs";"id";"defs")

$filter:=DOM Create XML element:C865($defs;"filter";"id";"filter-blur")
$feGaussianBlur:=DOM Create XML element:C865($filter;"feGaussianBlur";"stdDeviation";$stdDeviation)

$clipImage:=DOM Create XML element:C865($defs;"image";\
"id";"clip-image";"width";$width;"height";$height;\
"xlink:href";"data:image/png;base64,"+$image)

$clipMargin:=0  //blur outside the rect, to prevent transparency on edges
$mode:="geometricPrecision"

  //important:translate is ignored in clipPath
$clipPath:=DOM Create XML element:C865($defs;"clipPath";"id";"clip-path-rect")
$rect:=DOM Create XML element:C865($clipPath;"rect";\
"x";$clipX;\
"y";$clipY;\
"width";$clipWidth;\
"height";$clipHeight;\
"shape-rendering";$mode)

  //the blurred region
$g:=DOM Create XML element:C865($svg;"g";"clip-path";"url(#clip-path-rect)")

  //filter the image, then crop (to cover the edges)
$use:=DOM Create XML element:C865($g;"use";\
"xlink:href";"#clip-image";\
"filter";"url(#filter-blur)";\
"x";0;"y";0;"width";$width;"height";$height)

$viewBox:="0 0 "+String:C10($width;"&xml")+" "+String:C10($height;"&xml")
DOM SET XML ATTRIBUTE:C866($svg;"width";$width;"height";$height;"viewBox";$viewBox)

C_PICTURE:C286($filteredImage)
SVG EXPORT TO PICTURE:C1017($svg;$filteredImage)
DOM CLOSE XML:C722($svg)


$0:=$filteredImage