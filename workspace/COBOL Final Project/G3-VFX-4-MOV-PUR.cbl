      ******************************************************************
      *PROGRAM:  Vuflix TITLES PURCHASED PAGE
      *AUTHOR:   Jarrod Lee
      *DATE:     4/9/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VFX-4-MOV-PUR.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-PUR.
       COPY SELECT-VFX-MOV.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VFX-PUR.
       COPY FD-VFX-MOV.
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-PUR.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VFX-MOV-PUR' TO VFX-M-PROG.
       OPEN INPUT VTP-FILE.
       PERFORM UNTIL VFX-4-CHECK = 'Y' OR 'y'
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
       ADD  1          TO VFX-4-CTR
       IF VFX-4-CTR GREATER THAN 10
  
           DISPLAY CONT-FILE
           ACCEPT VFX-4-RESP
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-LABEL
  
           DISPLAY SPACES
           MOVE 1 TO VFX-4-CTR.

       MOVE VFX-4-PUR-ID      TO VFX-4-ID.
       MOVE VFX-4-PUR-NAME    TO VFX-4-TITLE.
       MOVE VFX-4-PUR-GENRE   TO VFX-4-GENRE.
       MOVE VFX-4-PUR-PRICE   TO VFX-4-PRICE.
       
       DISPLAY VFX-4-VML-LINE.