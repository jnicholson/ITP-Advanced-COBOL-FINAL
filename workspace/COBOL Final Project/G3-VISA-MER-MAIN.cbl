      ****************************************************************
      *PROGRAM:  Visa Main menu
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/5/2014   
      *ABSTRACT: self exp.
      ******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. G3-VISA-MER-MAIN.
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY WS-MENU.

       SCREEN SECTION.
       COPY SCREEN-VISA-MER-MAIN.               
       COPY SCREEN-EXIT.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VISA-MER-MAIN' TO WS-PROG.
       PERFORM UNTIL WS-SEL = 'X' OR 'x'
           DISPLAY MER-MENUSCREEN
           ACCEPT MER-MENUSCREEN
           EVALUATE WS-SEL
               WHEN '1' CALL 'G3-VISA-MER-ADD'
               WHEN '2' 
               CALL 'G3-VISA-MER-EDIT'
               WHEN '3' CALL 'G3-VISA-MER-DEL'
               WHEN '4' CALL 'G3-VISA-MER-SEARCH'
               WHEN '5' CALL 'G3-VISA-MER-LIST'
           END-EVALUATE
       END-PERFORM
       EXIT PROGRAM.
      ******************************************************************