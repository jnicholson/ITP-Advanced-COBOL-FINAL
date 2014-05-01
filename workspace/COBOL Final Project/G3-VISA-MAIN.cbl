      ****************************************************************
      *PROGRAM:  Visa Main menu
      *AUTHOR:   Henry Hurlocker
      *DATE:     4/5/2014   
      *ABSTRACT: self exp.
      ******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. G3_VISA_MAIN AS "G3_VISA_MAIN".
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY WS-MENU.
       
       01 WS-FILE     PIC X(20) VALUE "G3-VISA-MAIN".
       
       SCREEN SECTION.
       01  MENUSCREEN.
           03  BLANK SCREEN.
           03  MENU.
               05  LINE 01 COL 01 PIC X(20) FROM WS-FILE.
               05  LINE 01 COL 37 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 08 COL 31 VALUE "      VISA MAIN      ".
               05  LINE 10 COL 31 VALUE "   1) Issuers        ".
               05  LINE 11 COL 31 VALUE "   2) Merchants      ".
               05  LINE 12 COL 31 VALUE "   3) CC Access      ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO WS-SEL AUTO.
               
       COPY SCREEN-EXIT.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       PERFORM UNTIL WS-SEL = 'X' OR 'x'
           DISPLAY MENUSCREEN
           ACCEPT MENUSCREEN
           EVALUATE WS-SEL
               WHEN '1' CALL 'G3-VISA-ISS-ADD'
               WHEN '2' CALL 'G3-VISA-MER-MAIN'
           END-EVALUATE
       END-PERFORM
       MOVE SPACES TO WS-SEL
       EXIT PROGRAM.
               