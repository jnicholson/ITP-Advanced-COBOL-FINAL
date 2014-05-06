      ******************************************************************
      *PROGRAM:  Vuflix MOVIE WISHLIST PAGE
      *AUTHOR:   Jarrod Lee
      *DATE:     4/9/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VFX-5-MOV-WISH IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-WISH.
       COPY SELECT-VFX-MOV.
       COPY SELECT-VFX-MBR.
       COPY SELECT-VFX-PUR.
       COPY SELECT-ZIP.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VFX-WISH.
       COPY FD-VFX-MOV.
       COPY FD-VFX-MBR.
       COPY FD-VFX-PUR.
       COPY FD-ZIP.
       
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
                   VM-FILE
                   ZIP-MST-OUT.
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
       PERFORM 200-PUR UNTIL VFX-5-RESP = 'X' OR 'x'.
       CLOSE   VW-FILE
               VML-FILE
               VM-FILE
               ZIP-MST-OUT.
       ACCEPT  VFX-5-RESP.
       GOBACK.
      ******************************************************************
       100-DISPLAY.
       ADD 1 TO VFX-5-CTR.
       IF VFX-5-CTR GREATER THAN 15
           PERFORM 200-PUR UNTIL VFX-5-RESP = 'N' OR 'n' OR 'X' OR 'x'
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
       MOVE VM-ZIP     TO ZIP-KEY.
       START   ZIP-MST-OUT KEY NOT LESS THAN   ZIP-KEY.
       READ    ZIP-MST-OUT KEY IS              ZIP-KEY.
       MOVE SPACES     TO VFX-5-ORIG.
       MOVE VM-ID      TO VFX-5-ORIG-ID.
       MOVE VM-FNAME   TO VFX-5-ORIG-FNAME.
       MOVE VM-LNAME   TO VFX-5-ORIG-LNAME.
       MOVE VM-ADDRESS TO VFX-5-ORIG-ADDRESS.
       MOVE ZIP-CITYO  TO VFX-5-ORIG-CITY.
       MOVE ZIP-STATEO TO VFX-5-ORIG-STATE.
       MOVE VM-ZIP     TO VFX-5-ORIG-ZIP.
       MOVE VM-PHONE   TO VFX-5-ORIG-PHONE.
       MOVE VM-EMAIL   TO VFX-5-ORIG-EMAIL.
       MOVE VM-CC      TO VFX-5-ORIG-CC.
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF VFX-5-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO VFX-5-RESP
           PERFORM 100-CHECK
       END-IF.
      ******************************************************************
       200-PUR.
       MOVE SPACES TO VFX-5-RESP.
       IF VFX-5-ALPUR = 'A'
           OPEN INPUT VTP-FILE
           READ VTP-FILE NEXT RECORD
               AT END
                   MOVE SPACES TO VFX-5-ALPUR
               NOT AT END
                   CONTINUE
           END-READ
           CLOSE VTP-FILE
       END-IF.
       MOVE SPACES TO VFX-5-ALPUR.
       DISPLAY CONT-FILE.
       ACCEPT  VFX-5-RESP.
       IF VFX-5-RESP = 'P' OR 'p'
           DISPLAY PTSCREEN-PURCHASE
           ACCEPT  PTSCREEN-PURCHASE
           PERFORM 300-CHECK-PURCHASE
           IF VFX-5-ALPUR NOT EQUAL 'P'
               PERFORM 400-PURCHASE
           END-IF
       ELSE
       IF VFX-5-RESP = 'N' OR 'n'
           CONTINUE
       ELSE
       IF VFX-5-RESP = 'X' OR 'x'
           GOBACK
       END-IF.
      ******************************************************************
       300-CHECK-PURCHASE.
       OPEN INPUT VTP-FILE.
       PERFORM UNTIL VFX-5-RESP = 'Y'
           READ VTP-FILE NEXT RECORD
               AT END
                   MOVE 'Y' TO VFX-5-RESP
               NOT AT END
                   IF VTP-VM-ID-KEY = VFX-5-SEARCH-ID
                       IF VTP-VML-ID-KEY = VFX-5-VML-ID
                           DISPLAY ALPUR
                           MOVE 'A' TO VFX-5-ALPUR
                           CLOSE VTP-FILE
                           PERFORM 200-PUR
                       END-IF
                   END-IF
           END-READ
       END-PERFORM.
       CLOSE VTP-FILE.
      ******************************************************************
       400-PURCHASE.
       OPEN I-O VTP-FILE. 
       PERFORM 500-GET-ID.
       
       MOVE VFX-5-VML-ID TO VML-ID-KEY.
       START   VML-FILE KEY NOT LESS THAN  VML-ID-KEY.
       READ    VML-FILE KEY IS             VML-ID-KEY.
       
       CALL 'G3-LINK-CC-CHECK' USING VFX-5-ORIG-CC, VML-PRICE,
                               LK-COMPLETED.
       IF LK-COMPLETED = 'N'
           MOVE SPACES TO LK-COMPLETED
           DISPLAY BLANK-SCREEN
           DISPLAY 'YOU HAVE INSUFFICIENT FUNDS...'
           DISPLAY 'COME BACK WHEN YOU GET PAID...'
           DISPLAY 'RETURNING TO VUFLIX MENU...'
           DISPLAY "PRESS 'ENTER' TO CONTINUE"
           ACCEPT VFX-3-RESP
           CLOSE   VTP-FILE
                   VW-FILE
                   VM-FILE
                   VML-FILE
                   ZIP-MST-OUT
           GOBACK
       ELSE
       IF LK-COMPLETED = 'Y'
           MOVE SPACES TO LK-COMPLETED
       END-IF.
       
       MOVE SPACES TO LK-PURITEM.
       
       STRING 'VFX:', VML-TITLE DELIMITED BY SIZE INTO LK-PURITEM.
       CALL 'G3-LINK-CC-TRANS' USING VFX-3-ORIG-CC, VML-PRICE,
                               LK-PURITEM.
       
       MOVE VFX-5-VTP-ID       TO VTP-ID-KEY.
       MOVE VFX-5-SEARCH-ID    TO VTP-VM-ID-KEY.
       MOVE VFX-5-VML-ID       TO VTP-VML-ID-KEY.
       WRITE VTP-REC.
       CLOSE VTP-FILE.
       MOVE 'P' TO VFX-5-ALPUR.
       DISPLAY PURCHASED.
      ******************************************************************
       500-GET-ID.
       MOVE ZERO TO VTP-ID
               START VTP-FILE KEY NOT LESS THAN VTP-ID
           INVALID KEY
               DISPLAY 'OOPS'
               ACCEPT VFX-3-RESP
           NOT INVALID KEY
               READ VTP-FILE NEXT RECORD
               COMPUTE VTP-ID = VTP-ID - 1
               MOVE VTP-ID TO VFX-3-VTP-ID
       END-START.
       