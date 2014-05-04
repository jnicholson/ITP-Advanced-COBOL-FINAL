      *******************************************************************
      *PROGRAM       : CAPITAL ONE MAIN MENU                            *
      *AUTHOR        : HENRY HURLOCKER                                  *
      *EDITED BY     : DEVIN LEAMAN                                     *
      *CREATION DATE : 4/5/2014                                         *
      *******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. G3-CAP1-MAIN AS 'G3-CAP1-MAIN'.
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       DATA DIVISION.
       
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
       
       SCREEN SECTION.
       COPY SCREEN-CAP1-MAIN.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE 'G3-CAP1-MAIN' TO CAP1-M-PROG.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE SPACES TO WS-SEL.
       PERFORM UNTIL WS-SEL = 'X' OR 'x'
           DISPLAY MENUSCREEN
           ACCEPT MENUSCREEN
           EVALUATE WS-SEL
               WHEN '1' CALL 'G3-CAP1-U-ADD'
               WHEN '2' CALL 'G3-CAP1-U-INQ'
               WHEN '3' CALL 'G3-CAP1-U-EDIT'
               WHEN '4' CALL 'G3-CAP1-TRANS'
               WHEN '5' CALL 'G3-CAP1-MAN-TRAN'
               WHEN '6' CALL 'G3-CAP1-MONTH-END'
           END-EVALUATE
       END-PERFORM
       EXIT PROGRAM.
               