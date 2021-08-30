# 4d-component-simple-draw-tool
SVG polyline example with gaussian blur clip tool

<img width="689" alt="screenshot" src="https://user-images.githubusercontent.com/1725068/131315598-5023f642-64c3-4036-b3c9-bffb6dbebb8c.png">

### About

A **minimal** example of SVG-based annotation tool.

* 3 pen colours 
* apply gaussian blur to selected rectangular clip (the gray button on the right)
* clear lines (the blue button)
* clear masks (the gray button on the left)

The tools will appear when you move the mouse pointer to the bottom of the window.

### Design principle

__**DAMN with the widgets!!**__

The project shares a single API (*LEv2_OPEN_EDITOR*). That's it. The widget system (**EXECUTE METHOD IN SUBFORM**, **On Bound Variable Change**, **CALL SUBFORM CONTAINER**, **On Host Database Event**…) is not intuitive and tends to over-complicate things.

For integration with host, simply pass a callback formula. No need to share project methods.

### Example

```4d
$path_s:=Folder(fk database folder).folder("Samples").file("photo.jpg").platformPath

READ PICTURE FILE($path_s;$image)

$ctx:=New object  //all values are optional; see LEv2_OPEN_EDITOR for default settings

$ctx.image:=$image  //the image to display in the editor
$ctx.width:=800  //width of the editor
$ctx.height:=600  //height of the editor
$ctx.debug:=False  //fill the SVG layer background blue 
$ctx.lineColor:=1  //red, amber, green
$ctx.stdDeviation:=20  //the blur effect
$ctx.lineColor:=1
$ctx.lineWidth:=20
$ctx.lineOpacity:=0.9

  //callbacks; "This" = "Form"
$ctx.onLoad:=Formula(TEST_integration_onLoad )
$ctx.onUnload:=Formula(TEST_integration_onUnload )

LEv2_OPEN_EDITOR ($ctx)
```
