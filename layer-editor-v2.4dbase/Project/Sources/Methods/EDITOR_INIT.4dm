//%attributes = {"invisible":true,"preemptive":"incapable"}
C_REAL:C285($left;$top;$right;$bottom)
OBJECT GET COORDINATES:C663(*;"Image";$left;$top;$right;$bottom)

Form:C1466.DEINIT:=Formula:C1597(EDITOR_DEINIT )

Form:C1466.fitImageToFrame:=Formula:C1597(Image_fit_to_frame )
Form:C1466.getImageCoordinates:=Formula:C1597(Image_get_coordinates )
Form:C1466.initCanvas:=Formula:C1597(SVG_init )
Form:C1466.deinitCanvas:=Formula:C1597(SVG_deinit )
Form:C1466.updateCanvas:=Formula:C1597(Image_update )
Form:C1466.toggleResetTool:=Formula:C1597(EDITOR_update_reset_tool )
Form:C1466.resetClips:=Formula:C1597(EDITOR_reset_clip )
Form:C1466.toggleClearTool:=Formula:C1597(EDITOR_update_clear_tool )
Form:C1466.clearObjects:=Formula:C1597(EDITOR_clear_objects )

Form:C1466.info:=New object:C1471

Form:C1466.fitImageToFrame().initCanvas()

Form:C1466.window:=Current form window:C827
Form:C1466.workerName:=New collection:C1472("EDITOR_WORKER";"@";Form:C1466.window).join()
Form:C1466.workerMethod:="EDITOR_WORKER"
Form:C1466.workerMethodForm:="EDITOR_FORM"

Form:C1466.onClick:=Formula:C1597(EDITOR_on_click )
Form:C1466.onTimer:=Formula:C1597(EDITOR_on_timer )

Form:C1466.newEvent:=Formula:C1597(EDITOR_new_event )
Form:C1466.newObject:=Formula:C1597(EDITOR_new_object )
Form:C1466.newPolyLine:=Formula:C1597(EDITOR_new_polyline )

Form:C1466.startPolyline:=Formula:C1597(EDITOR_start_polyline )
Form:C1466.drawPolyline:=Formula:C1597(EDITOR_draw_polyline )
Form:C1466.closePolyline:=Formula:C1597(EDITOR_close_polyline )
Form:C1466.endPolyline:=Formula:C1597(EDITOR_end_polyline )

Form:C1466.startClip:=Formula:C1597(EDITOR_new_clip )
Form:C1466.drawClip:=Formula:C1597(EDITOR_draw_clip )
Form:C1466.closeClip:=Formula:C1597(EDITOR_close_clip )
Form:C1466.endClip:=Formula:C1597(EDITOR_end_clip )

Form:C1466.style:=New object:C1471
Form:C1466.style.polyline:=New object:C1471
Form:C1466.style.polyline.strokeOpacity:=Form:C1466.lineOpacity
Form:C1466.style.polyline.strokeWidth:=Form:C1466.lineWidth
Form:C1466.style.polyline.strokeLinecap:="round"
Form:C1466.style.polyline.strokeLinejoin:="round"

Form:C1466.setPolylineStroke:=Formula:C1597(EDITOR_select_polyline_mode )
Form:C1466.togglePolylineStrokeToolVisibility:=Formula:C1597(EDITOR_hover_tools )

Form:C1466.setPolylineStroke(1)

Form:C1466.setClip:=Formula:C1597(EDITOR_select_clip_mode )
Form:C1466.toggleClipToolVisibility:=Formula:C1597(EDITOR_hover_tools )

Form:C1466.onLoad.call(Form:C1466)