MOV A,60H
MOV B,61H
CJNE A,B,MOVE
JC EXCHANGE
EXCHANGE: XCH A,B
MOVE: MOV 70H,B
END