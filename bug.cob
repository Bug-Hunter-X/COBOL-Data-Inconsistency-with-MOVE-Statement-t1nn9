01  WS-AREA-1 PIC X(100). 
01  WS-AREA-2 PIC X(100). 

PROCEDURE DIVISION.
    MOVE 'Hello, world!' TO WS-AREA-1.
    MOVE WS-AREA-1 TO WS-AREA-2.
    DISPLAY WS-AREA-2.
    GOBACK.

* This program contains a potential bug.  If WS-AREA-1 is later modified,
* the changes may not be reflected in WS-AREA-2.  This is because COBOL's
* MOVE statement creates a copy, rather than a reference, to the data.
* To fix this, you should use a different method to transfer data, such as
* using pointers or creating a reference instead of a copy.