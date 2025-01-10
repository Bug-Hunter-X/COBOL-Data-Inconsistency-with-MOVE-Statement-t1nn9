01  WS-AREA-1 PIC X(100). 
01  WS-AREA-2 PIC X(100). 

PROCEDURE DIVISION.
    MOVE 'Hello, world!' TO WS-AREA-1.
    
    * To solve this bug, use a different method to transfer data.
    * This example uses a REDEFINES clause to create a reference.   
    01  WS-AREA-REF-1 REDEFINES WS-AREA-1.
    01  WS-AREA-REF-2 REDEFINES WS-AREA-2.
    MOVE WS-AREA-REF-1 TO WS-AREA-REF-2.
    DISPLAY WS-AREA-2.
    
    MOVE 'Modified' TO WS-AREA-1.
    DISPLAY WS-AREA-2.

    GOBACK.