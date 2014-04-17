      ******************************************************************
      *PROGRAM:  Vuflix Purchase titles
      *AUTHOR:   KATIE TRAN, Jarrod Lee
      *DATE:     4/7/2014   
      *ABSTRACT: 
      *THINGS TO DO: CURRENTLY ONLY DISPLAYS TITLES. NEEDS WAY TO 
      *              PURCHASE TITLES. NEED TO FINISH SORT SYSTEM.
      ******************************************************************
       PROGRAM-ID. G3-VFX-3-PUR.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-MOV.
       COPY SELECT-VFX-PUR.
       COPY SELECT-VFX-MBR.
       COPY SELECT-VFX-WISH.
      ******************************************************************
       DATA DIVISION.
       COPY FD-VFX-MOV.
       COPY FD-VFX-PUR.
       COPY FD-VFX-MBR.
       COPY FD-VFX-WISH.
       
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-3-PUR.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE 'G2-VFX-3-PUR' TO VFX-M-PROG.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       OPEN INPUT  VM-FILE.
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
       CLOSE   VM-FILE.
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
           READ VM-FILE
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
       SORT    SORT-FILE
               ON ASCENDING KEY SORT-ID-TXT 
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
       PERFORM 150-READ-FILE.            
     
      *-----------------------------------------------------------------
       100-SORT-NAME.
       SORT    SORT-FILE
               ON ASCENDING KEY SORT-TITLE-TXT 
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
       PERFORM 150-READ-FILE. 
       
      *-----------------------------------------------------------------
       100-SORT-GENRE.
       SORT    SORT-FILE
               ON ASCENDING KEY SORT-GENRE-TXT
                                SORT-TITLE-TXT
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
       PERFORM 150-READ-FILE. 
      
       
      *-----------------------------------------------------------------
       100-SORT-PRICE.
       SORT    SORT-FILE
               ON ASCENDING KEY SORT-PRICE-TXT
                                SORT-TITLE-TXT
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
       PERFORM 150-READ-FILE. 
      
      *-----------------------------------------------------------------
       150-READ-FILE. 
       DISPLAY PTSCREEN-HEADER.
       DISPLAY PTSCREEN-LABEL.
       DISPLAY SPACES.
       MOVE 'N' TO VFX-3-EOF-FLAG.
       MOVE 1 TO VFX-3-CTR.
       OPEN INPUT  VML-SORTED-FILE-TXT.
       PERFORM UNTIL VFX-3-EOF
           READ VML-SORTED-FILE-TXT      
               AT END                
                   MOVE 'Y' TO VFX-3-EOF-FLAG 
               NOT AT END
                   PERFORM 200-DISPLAY
       END-PERFORM.
       CLOSE   VML-SORTED-FILE-TXT.
       PERFORM 200-PUR-WISH UNTIL VFX-3-RESP = 'X' OR 'x'.
      *-----------------------------------------------------------------
       200-MOVE.
       MOVE 'C'        TO VFX-3-RESP.
       MOVE SPACES     TO VFX-3-ORIG.
       MOVE VM-ID      TO VFX-3-ORIG-ID.
       MOVE VM-FNAME   TO VFX-3-ORIG-FNAME.
       MOVE VM-LNAME   TO VFX-3-ORIG-LNAME.
       MOVE VM-ADDRESS TO VFX-3-ORIG-ADDRESS.
       MOVE VM-PHONE   TO VFX-3-ORIG-PHONE.
       MOVE VM-EMAIL   TO VFX-3-ORIG-EMAIL.
       MOVE VM-ZIP     TO VFX-3-ORIG-ZIP.
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
       ADD 1 TO VFX-3-CTR.
       IF VFX-3-CTR GREATER THAN 15
           PERFORM 200-PUR-WISH UNTIL VFX-3-RESP =  'N' OR 'n' OR 
                                                    'X' OR 'x'
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-LABEL
           DISPLAY SPACES
           MOVE 1 TO VFX-3-CTR
       END-IF.

       MOVE VML-SORTED-ID-TXT     TO VFX-3-ID.
       MOVE VML-SORTED-TITLE-TXT  TO VFX-3-TITLE.
       MOVE VML-SORTED-GENRE-TXT  TO VFX-3-GENRE.
       MOVE VML-SORTED-PRICE-TXT  TO VFX-3-PRICE.
       DISPLAY VFX-3-VML-LINE.
      *----------------------------------------------------------------- 
       200-PUR-WISH.
       MOVE SPACES TO VFX-3-RESP.
       IF VFX-3-WEIRD = 'R'
           OPEN INPUT VTP-FILE
           READ VTP-FILE NEXT RECORD
               AT END
                   MOVE SPACES TO VFX-3-WEIRD
               NOT AT END
                   CONTINUE
           END-READ
           CLOSE VTP-FILE
       END-IF.
       MOVE SPACES TO VFX-3-WEIRD.
       DISPLAY CONT-FILE.
       ACCEPT  VFX-3-RESP.
       IF VFX-3-RESP = 'P' OR 'p'
           DISPLAY PTSCREEN-PURCHASE
           ACCEPT  PTSCREEN-PURCHASE
           PERFORM 300-CHECK-PURCHASE
           IF VFX-3-WEIRD NOT EQUAL 'D'
               PERFORM 400-PURCHASE
           END-IF
       ELSE
       IF VFX-3-RESP = 'W' OR 'w'
           PERFORM 300-WISHLIST
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
                   MOVE VTP-ID TO VFX-3-VTP-ID
                   MOVE 'Y' TO VFX-3-RESP
               NOT AT END
                   IF VTP-VM-ID-KEY = VFX-3-SEARCH-ID
                       IF VTP-VML-ID-KEY = VFX-3-VML-ID
                           DISPLAY ALREADY
                           MOVE 'R' TO VFX-3-WEIRD
                           CLOSE VTP-FILE
                           PERFORM 200-PUR-WISH
                       END-IF
                   END-IF
           END-READ
       END-PERFORM.
       
      * MOVE VFX-3-VML-ID TO VTP-VML-ID-KEY.
      * READ VTP-FILE KEY VTP-VML-ID-KEY
      *     INVALID KEY
      *         CONTINUE
      *     NOT INVALID KEY
      *         DISPLAY ALREADY
      *         PERFORM 200-PUR-WISH
      * END-READ.
       CLOSE VTP-FILE.
      *-----------------------------------------------------------------
      * 400-WRITE.
      * ADD 1 TO VFX-3-VTP-ID
      * MOVE VFX-3-VTP-ID       TO VTP-ID-KEY.
      * MOVE VFX-3-SEARCH-ID    TO VTP-VM-ID-KEY.
      * MOVE VFX-3-VML-ID       TO VTP-VML-ID-KEY.
      * WRITE VTP-REC.
      * CLOSE VTP-FILE.
      * DISPLAY PURCHASED.
      *----------------------------------------------------------------- 
       400-PURCHASE.
       OPEN I-O VTP-FILE.
      * PERFORM UNTIL VFX-3-RESP = 'Y'
      *     READ VTP-FILE NEXT RECORD
      *         AT END 
      *             MOVE VTP-ID TO VFX-3-VTP-ID
      *             MOVE 'Y' TO VFX-3-RESP
      *         NOT AT END
      *             CONTINUE
      * END-PERFORM.  
       ADD 1 TO VFX-3-VTP-ID
       MOVE VFX-3-VTP-ID       TO VTP-ID-KEY.
       MOVE VFX-3-SEARCH-ID    TO VTP-VM-ID-KEY.
       MOVE VFX-3-VML-ID       TO VTP-VML-ID-KEY.
       WRITE VTP-REC.
       CLOSE VTP-FILE.
       MOVE 'D' TO VFX-3-WEIRD.
       DISPLAY PURCHASED.
      *-----------------------------------------------------------------
       300-WISHLIST.
       

       
