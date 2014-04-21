      ******************************************************************
      *PROGRAM:  Vuflix MOVIE WISHLIST PAGE
      *AUTHOR:   Jarrod Lee
      *DATE:     4/9/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VFX-5-MOV-WISH.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-WISH.
       COPY SELECT-VFX-MOV.
       COPY SELECT-VFX-MBR.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VFX-WISH.
       COPY FD-VFX-MOV.
       COPY FD-VFX-MBR.
       
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-5-MOV-WISH.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VFX-5-MOV-WISH' TO VFX-M-PROG.
       OPEN INPUT  VW-FILE
                   VML-FILE
                   VM-FILE.
       PERFORM 100-CHECK.
       DISPLAY PTSCREEN-HEADER.
       DISPLAY PTSCREEN-LABEL.
       DISPLAY SPACES.
       PERFORM UNTIL VFX-5-CHECK = 'Q'
           READ VW-FILE NEXT RECORD
               AT END
                   MOVE 'Q' TO VFX-5-CHECK
               NOT AT END
                   PERFORM 100-DISPLAY
       END-PERFORM.
       CLOSE   VW-FILE
               VML-FILE
               VM-FILE.
       ACCEPT  VFX-5-RESP.
       GOBACK.
      ******************************************************************
       100-DISPLAY.
       ADD 1 TO VFX-5-CTR.
       IF VFX-5-CTR GREATER THAN 15
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-LABEL
           DISPLAY SPACES
           MOVE 1 TO VFX-5-CTR
       END-IF.
       IF VW-VM-ID-KEY = VFX-5-SEARCH-ID
           IF VW-VML-ID-KEY = VFX-5-ID
               MOVE 'O' TO VFX-5-LOOP
           ELSE
               MOVE VW-VML-ID-KEY TO VML-ID-KEY
               READ VML-FILE KEY VML-ID
                   INVALID KEY
                       DISPLAY 'SOMETHING WENT WRONG'
                       ACCEPT VFX-5-RESP
                       PERFORM 000-MAIN
                   NOT INVALID KEY
                       MOVE VML-ID     TO VFX-5-ID
                       MOVE VML-TITLE  TO VFX-5-TITLE
                       MOVE VML-GENRE  TO VFX-5-GENRE
                       MOVE VML-PRICE  TO VFX-5-PRICE
               END-READ
           END-IF
           IF VFX-5-LOOP = 'O'
               CONTINUE
           ELSE
               DISPLAY VFX-5-VML-LINE
           END-IF
       END-IF.
      ******************************************************************
       100-CHECK.
       DISPLAY IDSCREEN.
       ACCEPT CHOOSEID.
       IF VFX-5-SEARCH-ID = '99999999'
           GOBACK
       END-IF.
       PERFORM UNTIL VFX-5-CHECK = 'Y' OR 'y'
           MOVE SPACES TO VFX-5-CHECK
           MOVE VFX-5-SEARCH-ID TO VM-ID-KEY
           READ VM-FILE
               INVALID KEY
                   MOVE 'INVALID ID' TO VFX-2-MSG
               NOT INVALID KEY
                   MOVE SPACES TO VFX-2-MSG
                   PERFORM 200-MOVE
           END-READ
           IF VFX-5-RESP = 'C'
               CONTINUE
           ELSE
               DISPLAY IDSCREEN
               ACCEPT CHOOSEID
           END-IF
       END-PERFORM.
      ******************************************************************
       200-MOVE.
       MOVE 'C'        TO VFX-5-RESP.
       MOVE SPACES     TO VFX-5-ORIG.
       MOVE VM-ID      TO VFX-5-ORIG-ID.
       MOVE VM-FNAME   TO VFX-5-ORIG-FNAME.
       MOVE VM-LNAME   TO VFX-5-ORIG-LNAME.
       MOVE VM-ADDRESS TO VFX-5-ORIG-ADDRESS.
       MOVE VM-PHONE   TO VFX-5-ORIG-PHONE.
       MOVE VM-EMAIL   TO VFX-5-ORIG-EMAIL.
       MOVE VM-ZIP     TO VFX-5-ORIG-ZIP.
       MOVE VM-CC      TO VFX-5-ORIG-CC.
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF VFX-5-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO VFX-5-RESP
           PERFORM 100-CHECK
       END-IF.