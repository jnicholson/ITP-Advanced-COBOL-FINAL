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
       COPY SCREEN-VFX-3-PUR.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VFX-MOV-PUR' TO VFX-M-PROG.
       OPEN INPUT  VTP-FILE.
       OPEN INPUT  VML-FILE.
       PERFORM UNTIL VFX-4-CHECK = 'Y' OR 'y'
           READ VTP-FILE
               AT END
                   MOVE 'Y' TO VFX-4-CHECK
               NOT AT END
                   PERFORM 100-DISPLAY
       END-PERFORM.
       CLOSE   VTP-FILE.
       CLOSE   VML-FILE.
       ACCEPT  VFX-4-RESP.
       GOBACK.
      ******************************************************************
       100-DISPLAY.
       ADD 1 TO VFX-4-CTR.
       IF VFX-4-CTR GREATER THAN 10
           DISPLAY CONT-FILE
           ACCEPT VFX-4-RESP
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-LABEL
           DISPLAY SPACES
           MOVE 1 TO VFX-4-CTR
       END-IF.
       MOVE VTP-VML-ID-KEY TO VML-ID-KEY.
       READ VML-FILE
           INVALID KEY
               DISPLAY 'SOMETHING WENT WRONG'
               ACCEPT VFX-4-RESP
               PERFORM 000-MAIN
           NOT INVALID KEY
               MOVE VML-ID TO VFX-4-ID
               MOVE VML-TITLE TO VFX-4-TITLE
               MOVE VML-GENRE TO VFX-4-GENRE
               MOVE VML-PRICE TO VFX-4-PRICE
       END-READ.
       DISPLAY VFX-4-VML-LINE.