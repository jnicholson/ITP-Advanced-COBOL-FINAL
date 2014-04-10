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
       COPY WS-MENU.
       
       SCREEN SECTION.
       COPY SCREEN-VFX.
       COPY SCREEN-EXIT.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       PERFORM UNTIL WS-SEL = 'X' OR 'x'
           DISPLAY MENUSCREEN
           ACCEPT MENUSCREEN
           EVALUATE WS-SEL
               WHEN '1' CALL 'G3-VUFL-1-AS'
               WHEN '2' CALL 'G3-VUFL-2-EA'
               WHEN '3' CALL 'G3-VUFL-3-PT'
               WHEN '4' CALL 'G3-VUFL-4-TP'
               WHEN '5' CALL 'G3-VUFL-5-TV'
           END-EVALUATE
       END-PERFORM.
       EXIT PROGRAM.
               