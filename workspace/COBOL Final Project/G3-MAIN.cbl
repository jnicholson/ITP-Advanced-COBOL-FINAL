      ******************************************************************
      *PROGRAM:  Group 3 semester project main menu
      *AUTHOR:   Henry Hurlocker
      *DATE:     4/5/2014   
      *ABSTRACT: Main menu app to navigate through all main pages. 
      ******************************************************************
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. G3_MAIN AS "G3_MAIN" IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY WS-GEN-MENU.
           
       SCREEN SECTION.
       01  MENUSCREEN.
           03  BLANK SCREEN.
           03  MENU.
               05  LINE 01 COL 01 VALUE "MAIN MENU".
               05  LINE 01 COL 37 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ":".
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 08 COL 31 VALUE "      Main menu     ".
               05  LINE 10 COL 31 VALUE "   1) VISA          ".
               05  LINE 11 COL 31 VALUE "   2) Capital One   ".
               05  LINE 12 COL 31 VALUE "   3) Vuflix        ".
               05  LINE 13 COL 31 VALUE "   4) File Admin    ".
               05  LINE 14 COL 31 VALUE "   5) Build ISAMs   ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO WS-SEL AUTO.
               
       01  EXITSCREEN.
               05  LINE 24 COL 33 VALUE "Confirm exit 'Y'".
               05  LINE 24 COL 50 PIC X TO WS-EXIT AUTO.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       PERFORM UNTIL WS-EXIT = 'Y' OR 'y'
           MOVE SPACES TO WS-SEL
           PERFORM UNTIL WS-SEL = 'X' OR 'x'
               DISPLAY MENUSCREEN
               ACCEPT  MENUSCREEN
               EVALUATE WS-SEL
      *            PLACE CALLS TO SUBPROGRAMS HERE.         
                   WHEN '1' CALL 'G3-VISA-MAIN'
                   WHEN '2' CALL 'G3-CAP1-MAIN'
                   WHEN '3' CALL 'G3-VUFL-MAIN'
                   WHEN '4' CALL 'G3-ADMIN-MAIN'
                   WHEN '5' CALL 'G3-BUILD-MAIN'
               END-EVALUATE
           END-PERFORM
           
           DISPLAY EXITSCREEN
           ACCEPT EXITSCREEN
       END-PERFORM
       STOP RUN.
         
       END PROGRAM G3_MAIN.