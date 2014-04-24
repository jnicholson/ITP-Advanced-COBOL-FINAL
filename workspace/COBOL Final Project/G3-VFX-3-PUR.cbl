      ******************************************************************
      *PROGRAM:  Vuflix Purchase titles
      *AUTHOR:   Jarrod Lee, KATIE TRAN
      *DATE:     4/7/2014   
      *ABSTRACT: 
      *THINGS TO DO: CURRENTLY ONLY DISPLAYS TITLES. NEEDS WAY TO 
      *              PURCHASE TITLES. NEED TO FINISH SORT SYSTEM.
      ******************************************************************
       PROGRAM-ID. G3-VFX-3-PUR IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-MOV.
       COPY SELECT-VFX-PUR.
       COPY SELECT-VFX-MBR.
       COPY SELECT-VFX-WISH.
       COPY SELECT-ZIP.
      ******************************************************************
       DATA DIVISION.
       COPY FD-VFX-MOV.
       COPY FD-VFX-PUR.
       COPY FD-VFX-MBR.
       COPY FD-VFX-WISH.
       COPY FD-ZIP.
       
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-3-PUR.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE 'G3-VFX-3-PUR' TO VFX-M-PROG.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       OPEN I-O    VM-FILE
                   VML-FILE
                   ZIP-MST-OUT.
       PERFORM 100-CHECK.
       MOVE SPACES TO VFX-3-SEL.
       MOVE SPACES TO VFX-3-RESP.
       PERFORM UNTIL VFX-3-SEL = 'X' OR 'x'
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-SORT-MENU
           ACCEPT PTSCREEN-SORT-MENU
           EVALUATE VFX-3-SEL
               WHEN '1' PERFORM 100-SORT-ID
               WHEN '2' PERFORM 100-SORT-NAME
               WHEN '3' PERFORM 100-SORT-GENRE
               WHEN '4' PERFORM 100-SORT-PRICE
           END-EVALUATE
       END-PERFORM.
       CLOSE   VM-FILE
               VML-FILE
               ZIP-MST-OUT.
       GOBACK.
      *-----------------------------------------------------------------
       100-CHECK.
       DISPLAY IDSCREEN.
       ACCEPT CHOOSEID.
       IF VFX-3-SEARCH-ID = '99999999'
           GOBACK
       END-IF.
       PERFORM UNTIL VFX-3-CHECK = 'Y' OR 'y'
           MOVE SPACES TO VFX-3-CHECK
           MOVE VFX-3-SEARCH-ID TO VM-ID-KEY
           READ VM-FILE KEY IS VM-ID-KEY
               INVALID KEY
                   MOVE 'INVALID ID' TO VFX-2-MSG
               NOT INVALID KEY
                   MOVE SPACES TO VFX-2-MSG
                   PERFORM 200-MOVE
           END-READ
           IF VFX-3-RESP = 'C' OR 'c'
               CONTINUE
           ELSE
               DISPLAY IDSCREEN
               ACCEPT CHOOSEID
           END-IF
       END-PERFORM.
      *-----------------------------------------------------------------
       100-SORT-ID.
       MOVE SPACES TO VFX-3-SEL.
       MOVE 1 TO VFX-3-CTR.
       DISPLAY PTSCREEN-LABEL
       DISPLAY SPACES
       DISPLAY SPACES
       PERFORM UNTIL VFX-3-EOF
           READ VML-FILE NEXT RECORD   
               AT END                
                   MOVE 'Y' TO VFX-3-EOF-FLAG 
               NOT AT END
                   PERFORM 200-DISPLAY
       END-PERFORM.
       PERFORM 200-PUR-WISH UNTIL VFX-3-RESP = 'X' OR 'x'.
      *-----------------------------------------------------------------
       100-SORT-NAME.
       MOVE SPACES TO VFX-3-SEL.
       MOVE SPACES TO VFX-3-EOF-FLAG.
       MOVE SPACES TO VFX-3-RESP.
       DISPLAY NAMESCREEN.
       ACCEPT CHOOSENAME.
       MOVE FUNCTION UPPER-CASE(VFX-3-SEARCH-TITLE) TO VML-TITLE-KEY.
      *MOVE VFX-3-SEARCH-TITLE TO VML-TITLE-KEY.
       START VML-FILE KEY NOT LESS THAN VML-TITLE-KEY.
       MOVE 1 TO VFX-3-CTR.
       DISPLAY PTSCREEN-LABEL
       DISPLAY SPACES
       DISPLAY SPACES
       PERFORM UNTIL VFX-3-EOF
           READ VML-FILE NEXT RECORD   
               AT END                
                   MOVE 'Y' TO VFX-3-EOF-FLAG 
               NOT AT END
                   PERFORM 200-DISPLAY
       END-PERFORM.
       PERFORM 200-PUR-WISH UNTIL VFX-3-RESP = 'X' OR 'x'.
      *-----------------------------------------------------------------
       100-SORT-GENRE.
       MOVE SPACES TO VFX-3-SEL.
       MOVE SPACES TO VFX-3-EOF-FLAG.
       MOVE SPACES TO VFX-3-RESP.
       DISPLAY GENRESCREEN.
       ACCEPT CHOOSEGENRE.
       MOVE FUNCTION UPPER-CASE(VFX-3-SEARCH-GENRE) TO VML-GENRE-KEY.
      *MOVE VFX-3-SEARCH-GENRE TO VML-GENRE-KEY.
       START VML-FILE KEY NOT LESS THAN VML-GENRE-KEY.
       MOVE 1 TO VFX-3-CTR.
       DISPLAY PTSCREEN-LABEL
       DISPLAY SPACES
       DISPLAY SPACES
       PERFORM UNTIL VFX-3-EOF
           READ VML-FILE NEXT RECORD   
               AT END                
                   MOVE 'Y' TO VFX-3-EOF-FLAG 
               NOT AT END
                   PERFORM 200-DISPLAY
       END-PERFORM.
       PERFORM 200-PUR-WISH UNTIL VFX-3-RESP = 'X' OR 'x'.
      *-----------------------------------------------------------------
       100-SORT-PRICE.
       MOVE SPACES TO VFX-3-SEL.
       MOVE SPACES TO VFX-3-EOF-FLAG.
       MOVE SPACES TO VFX-3-RESP.
       DISPLAY PRICESCREEN.
       ACCEPT CHOOSEPRICE.
       MOVE VFX-3-SEARCH-PRICE TO VML-PRICE-KEY.
       START VML-FILE KEY NOT LESS THAN VML-PRICE-KEY.
       MOVE 1 TO VFX-3-CTR.
       DISPLAY PTSCREEN-LABEL
       DISPLAY SPACES
       DISPLAY SPACES
       PERFORM UNTIL VFX-3-EOF
           READ VML-FILE NEXT RECORD   
               AT END                
                   MOVE 'Y' TO VFX-3-EOF-FLAG 
               NOT AT END
                   PERFORM 200-DISPLAY
       END-PERFORM.
       PERFORM 200-PUR-WISH UNTIL VFX-3-RESP = 'X' OR 'x'.
      *-----------------------------------------------------------------
       200-MOVE.
       MOVE 'C'        TO VFX-3-RESP.
       MOVE VM-ZIP     TO ZIP-KEY.
       START   ZIP-MST-OUT KEY NOT LESS THAN   ZIP-KEY.
       READ    ZIP-MST-OUT KEY IS              ZIP-KEY.
       MOVE SPACES     TO VFX-3-ORIG.
       MOVE VM-ID      TO VFX-3-ORIG-ID.
       MOVE VM-FNAME   TO VFX-3-ORIG-FNAME.
       MOVE VM-LNAME   TO VFX-3-ORIG-LNAME.
       MOVE VM-ADDRESS TO VFX-3-ORIG-ADDRESS.
       MOVE ZIP-CITYO  TO VFX-3-ORIG-CITY.
       MOVE ZIP-STATEO TO VFX-3-ORIG-STATE.
       MOVE VM-ZIP     TO VFX-3-ORIG-ZIP.
       MOVE VM-PHONE   TO VFX-3-ORIG-PHONE.
       MOVE VM-EMAIL   TO VFX-3-ORIG-EMAIL.
       MOVE VM-CC      TO VFX-3-ORIG-CC.
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF VFX-3-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO VFX-3-RESP
           PERFORM 100-CHECK
       END-IF.
      *-----------------------------------------------------------------
       200-DISPLAY.
       MOVE SPACES TO VFX-3-SEL.
       ADD 1 TO VFX-3-CTR.
       IF VFX-3-CTR GREATER THAN 15
           PERFORM 200-PUR-WISH UNTIL VFX-3-RESP = 'N' OR 'n' OR 
                                                   'X' OR 'x'
           DISPLAY PTSCREEN-LABEL
           DISPLAY SPACES
           DISPLAY SPACES
           MOVE 1 TO VFX-3-CTR
       END-IF.
       MOVE VML-ID     TO VFX-3-ID
       MOVE VML-TITLE  TO VFX-3-TITLE
       MOVE VML-GENRE  TO VFX-3-GENRE
       MOVE VML-PRICE  TO VFX-3-PRICE
       MOVE VML-SH     TO VFX-3-SH
       IF VFX-3-SH = 'S' OR 's'
           DISPLAY VFX-3-VML-LINE
       END-IF.
      *----------------------------------------------------------------- 
       200-PUR-WISH.
       MOVE SPACES TO VFX-3-RESP.
       IF VFX-3-ALPUR = 'A'
           OPEN INPUT VTP-FILE
           READ VTP-FILE NEXT RECORD
               AT END
                   MOVE SPACES TO VFX-3-ALPUR
               NOT AT END
                   CONTINUE
           END-READ
           CLOSE VTP-FILE
       END-IF.
       MOVE SPACES TO VFX-3-ALPUR.
       DISPLAY CONT-FILE.
       ACCEPT  VFX-3-RESP.
       IF VFX-3-RESP = 'P' OR 'p'
           DISPLAY PTSCREEN-PURCHASE
           ACCEPT  PTSCREEN-PURCHASE
           PERFORM 300-CHECK-PURCHASE
           IF VFX-3-ALPUR NOT EQUAL 'P'
               PERFORM 400-PURCHASE
           END-IF
       ELSE
       IF VFX-3-RESP = 'W' OR 'w'
           DISPLAY PTSCREEN-WISH
           ACCEPT  PTSCREEN-WISH
           PERFORM 300-CHECK-WISHLIST
           IF VFX-3-ALWSH NOT EQUAL 'W'
               PERFORM 400-WISHLIST
       ELSE
       IF VFX-3-RESP = 'N' OR 'n'
           CONTINUE
       ELSE
       IF VFX-3-RESP = 'X' OR 'x'
           GOBACK
       END-IF.
      *-----------------------------------------------------------------
       300-CHECK-PURCHASE.
       OPEN INPUT VTP-FILE.
       PERFORM UNTIL VFX-3-RESP = 'Y'
           READ VTP-FILE NEXT RECORD
               AT END
                   MOVE 'Y' TO VFX-3-RESP
               NOT AT END
                   IF VTP-VM-ID-KEY = VFX-3-SEARCH-ID
                       IF VTP-VML-ID-KEY = VFX-3-VML-ID
                           DISPLAY ALPUR
                           MOVE 'A' TO VFX-3-ALPUR
                           CLOSE VTP-FILE
                           PERFORM 200-PUR-WISH
                       END-IF
                   END-IF
           END-READ
       END-PERFORM.
       CLOSE VTP-FILE.
      *-----------------------------------------------------------------
       300-CHECK-WISHLIST.
       OPEN INPUT VW-FILE.
       PERFORM UNTIL VFX-3-RESP = 'Y'
           READ VW-FILE NEXT RECORD
               AT END
                   MOVE 'Y' TO VFX-3-RESP
               NOT AT END
                   IF VW-VM-ID-KEY = VFX-3-SEARCH-ID
                       IF VW-VML-ID-KEY = VFX-3-VML-ID
                           DISPLAY ALWSH
                           MOVE 'A' TO VFX-3-ALWSH
                           CLOSE VW-FILE
                           PERFORM 200-PUR-WISH
                       END-IF
                   END-IF
           END-READ
       END-PERFORM.
       CLOSE VW-FILE.
      *----------------------------------------------------------------- 
       400-PURCHASE.
       OPEN I-O VTP-FILE. 
       PERFORM 500-GET-VTP.
       MOVE VFX-3-VTP-ID       TO VTP-ID-KEY.
       MOVE VFX-3-SEARCH-ID    TO VTP-VM-ID-KEY.
       MOVE VFX-3-VML-ID       TO VTP-VML-ID-KEY.
       WRITE VTP-REC.
       CLOSE VTP-FILE.
       MOVE 'P' TO VFX-3-ALPUR.
       DISPLAY PURCHASED.
      *-----------------------------------------------------------------
       400-WISHLIST.
       OPEN I-O VW-FILE. 
       PERFORM 500-GET-VW.
       MOVE VFX-3-VW-ID       TO VW-ID-KEY.
       MOVE VFX-3-SEARCH-ID    TO VW-VM-ID-KEY.
       MOVE VFX-3-VML-ID       TO VW-VML-ID-KEY.
       WRITE VW-REC.
       CLOSE VW-FILE.
       MOVE 'W' TO VFX-3-ALWSH.
       DISPLAY WISHLISTED.
      ******************************************************************
       500-GET-VTP.
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
      ******************************************************************
       500-GET-VW.
       MOVE ZERO TO VW-ID
               START VW-FILE KEY NOT LESS THAN VW-ID
           INVALID KEY
               DISPLAY 'OOPS'
               ACCEPT VFX-3-RESP
           NOT INVALID KEY
               READ VW-FILE NEXT RECORD
               COMPUTE VW-ID = VW-ID - 1
               MOVE VW-ID TO VFX-3-VW-ID
       END-START.
