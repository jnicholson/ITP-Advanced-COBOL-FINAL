      ******************************************************************
      *PROGRAM:  Vuflix main menu
      *AUTHOR:   Henry Hurlocker
      *DATE:     4/5/2014   
      *ABSTRACT: 
      ******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. G3-VUFL-MAIN AS "G3-VUFL-MAIN".
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       SCREEN SECTION.
       COPY SCREEN-VFX-MENU.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G2-VFX-MAIN' TO VFX-M-PROG.
       PERFORM UNTIL VFX-M-SEL = 'X' OR 'x'
           DISPLAY MENUSCREEN
           ACCEPT MENUSCREEN
           EVALUATE VFX-M-SEL
               WHEN '1' CALL 'G3-VFX-1-ADD'
               WHEN '2' CALL 'G3-VFX-2-EDIT'
               WHEN '3' CALL 'G3-VFX-3-PUR'
               WHEN '4' CALL 'G3-VFX-4-MOV-PUR'
               WHEN '5' CALL 'G3-VFX-5-MOV-WISH'
               WHEN '6' CALL 'G3-VFX-6-ADD-REM'
               WHEN '7' CALL 'G3-VFX-7-MOV-INQ'
           END-EVALUATE
       END-PERFORM.
       GOBACK.
               