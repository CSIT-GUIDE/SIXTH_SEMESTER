;AntiClockWise Rotation
;CLR p3.1
;SETB p3.0

;ClockWise Rotation
;SETB p3.1
;CLR p3.0


;In Alternate Direction

LOOP:	SETB p3.0
		CLR p3.1
		CALL DELAY
		SETB p3.1
		CLR p3.0
		CALL DELAY
SJMP LOOP

DELAY: 	MOV R5,#100
		DJNZ R5,$
		RET