//%attributes = {"invisible":true}
SET TIMER:C645(0)

Form:C1466.deinitCanvas()

KILL WORKER:C1390(Form:C1466.workerName)

Form:C1466.onUnload.call(Form:C1466)