      ******************************************************************
      *PROGRAM : VUFLIX MAIN MENU                                      *
      *AUTHOR  : JARROD LEE                                            *
      *DATE    : 04-07-2014                                            *
      *ABSTRACT:                                                       *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENU-VUFLIX.
      *----------------------------------------------------------------- 
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY WS-GEN-MENU.
       
       SCREEN SECTION.
       COPY SCREEN-VUFLIX.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       100-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE SPACES TO WS-SEL
       PERFORM UNTIL WS-SEL = 'B' or 'b'
           DISPLAY SCREEN-VUFLIX-MENU
           ACCEPT  SCREEN-VUFLIX-MENU
           EVALUATE WS-SEL
               WHEN '1' CALL 'VUFLIX-1-MSU'
               WHEN '2' CALL 'VUFLIX-2-ML'
               WHEN '3' CALL 'VUFLIX-3-MA'
           END-EVALUATE
       END-PERFORM.
       STOP RUN.