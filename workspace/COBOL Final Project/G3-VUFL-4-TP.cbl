      ******************************************************************
      *PROGRAM:  Vuflix TITLES PURCHASED PAGE
      *AUTHOR:   Jarrod Lee
      *DATE:     4/9/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VUFL-4-TP.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VUFLIX-PURCHASED.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VUFLIX-PURCHASED.
       
       WORKING-STORAGE SECTION.
       COPY WS-VUFLIX.
       
       SCREEN SECTION.
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VUFL-4-TP' TO WS-PROG.
       OPEN INPUT VTP-FILE.
       PERFORM UNTIL WS-CHECK = 'Y' OR 'y'
      *     READ VTP-FILE
      *         AT END
      *             MOVE 'Y' TO WS-CHECK
      *         NOT AT END
                   PERFORM 100-DISPLAY
       END-PERFORM.
       CLOSE VTP-FILE.
       EXIT PROGRAM.
      ******************************************************************
       100-DISPLAY.
       ADD  1          TO WS-CTR
       IF WS-CTR GREATER THAN 10
           DISPLAY SPACES
           DISPLAY 'PRESS ENTER TO CONTINUE'
           ACCEPT WS-RESP
           DISPLAY BLANK-SCREEN
           DISPLAY 'ISAM-5-LIST (ID)'
           DISPLAY SPACES
           MOVE 1 TO WS-CTR.

      * MOVE STU-ID     TO WS-ID.
      * MOVE STU-FNAME  TO WS-FNAME.
      * MOVE STU-LNAME  TO WS-LNAME.
      * MOVE STU-STREET TO WS-STREET.
      * MOVE STU-CITY   TO WS-CITY.
      * MOVE STU-ST     TO WS-ST.