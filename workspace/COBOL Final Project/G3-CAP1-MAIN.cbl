      ******************************************************************
      *PROGRAM:  Capital One main menu
      *AUTHOR:   Henry Hurlocker
      *DATE:     4/5/2014   
      *ABSTRACT: 
      ******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. G3-CAP1-MAIN AS "G3-CAP1-MAIN" IS INITIAL.
       
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-VARS.
           03  WS-SEL   PIC X VALUE SPACES.
           03  WS-EXIT  PIC X VALUE SPACES.
       
       SCREEN SECTION.
       01  MENUSCREEN.
           03  BLANK SCREEN.
           03  MENU.
               05  LINE 08 COL 31 VALUE "   CAPTAIL ONE MAIN    ".
               05  LINE 10 COL 31 VALUE "   1) Account Signup   ".
               05  LINE 11 COL 31 VALUE "   2) Account Inquiry  ".
               05  LINE 12 COL 31 VALUE "   3) Account Statement".
               05  LINE 13 COL 31 VALUE "   4) Account Payment  ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO WS-SEL AUTO.
               
       01  EXITSCREEN.
               05  LINE 24 COL 33 VALUE "Confirm exit 'Y'".
               05  LINE 24 COL 50 PIC X TO WS-EXIT AUTO. 
               
       PROCEDURE DIVISION.
       100-MAIN.
           PERFORM UNTIL WS-SEL = 'X' OR 'x'
               DISPLAY MENUSCREEN
               ACCEPT MENUSCREEN
               EVALUATE WS-SEL
                   WHEN '1'
                   WHEN '2'
                   WHEN '3'
               END-EVALUATE
           END-PERFORM
           EXIT PROGRAM.
               