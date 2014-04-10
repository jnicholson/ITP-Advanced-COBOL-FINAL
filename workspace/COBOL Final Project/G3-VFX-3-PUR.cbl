      ******************************************************************
      *PROGRAM:  Vuflix Purchase titles
      *AUTHOR:   KATIE TRAN
      *DATE:     4/7/2014   
      *ABSTRACT: 
      *THINGS TO DO: CURRENTLY ONLY DISPLAYS TITLES. NEEDS WAY TO 
      *              PURCHASE TITLES. NEED TO FINISH SORT SYSTEM.
      ******************************************************************
       PROGRAM-ID. G3-VUFL-3-PT.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-MOV.
      ******************************************************************
       DATA DIVISION.
       COPY FD-VFX-MOV.
      * COPY SD-VUFL-3-PT-SORT.
       
       WORKING-STORAGE SECTION.
       COPY WS-VFX-PUR.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-PUR.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
      * OPEN I-O VML-FILE-TXT.
       
       
       
       PERFORM UNTIL WS-SEL = 'X' OR 'x'
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-SORT-MENU
           ACCEPT PTSCREEN-SORT-MENU
           EVALUATE WS-SEL
               WHEN '1' PERFORM 100-SORT-ID
               WHEN '2' PERFORM 100-SORT-NAME
               WHEN '3' PERFORM 100-SORT-GENRE
               WHEN '4' PERFORM 100-SORT-PRICE
           END-EVALUATE
       END-PERFORM.
       
           EXIT PROGRAM.
           STOP RUN.

       
      
      *-----------------------------------------------------------------
       100-SORT-ID.
       SORT  SORT-FILE
               ON ASCENDING KEY SORT-ID-TXT 
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
       PERFORM 150-TEST.            
     
      *---------------------------------------------------------------- -
       100-SORT-NAME.
       SORT  SORT-FILE
               ON ASCENDING KEY SORT-TITLE-TXT 
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
      
       
      *-----------------------------------------------------------------
       100-SORT-GENRE.
       SORT  SORT-FILE
               ON ASCENDING KEY SORT-GENRE-TXT
                                SORT-TITLE-TXT
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
      
       
      *-----------------------------------------------------------------
       100-SORT-PRICE.
       SORT  SORT-FILE
               ON ASCENDING KEY SORT-PRICE-TXT
                                SORT-TITLE-TXT
                   USING  VML-FILE-TXT
                   GIVING VML-SORTED-FILE-TXT.
      
      *-----------------------------------------------------------------
       150-TEST.
       DISPLAY PTSCREEN-HEADER.
       DISPLAY PTSCREEN-LABEL.
       DISPLAY SPACES
       
       PERFORM UNTIL WS-EOF
               READ VML-SORTED-FILE-TXT      
                   AT END                
                       MOVE 'Y' TO WS-EOF-FLAG 
                   NOT AT END
                       PERFORM 200-DISPLAY-TEST
           END-PERFORM.
       ACCEPT WS-RESP.    
      *-----------------------------------------------------------------
       150-READ-FILE. 
       DISPLAY PTSCREEN-HEADER.
       DISPLAY PTSCREEN-LABEL.
       DISPLAY SPACES
      
      
       PERFORM UNTIL WS-EOF
               READ VML-SORTED-FILE-TXT      
                   AT END                
                       MOVE 'Y' TO WS-EOF-FLAG 
                   NOT AT END
                       PERFORM 200-DISPLAY
           END-PERFORM.

      *     CLOSE VML-FILE-TXT.
      
           DISPLAY END-FILE.
           ACCEPT  WS-RESP.
       
      *-----------------------------------------------------------------
       200-DISPLAY.
           ADD  1          TO WS-CTR
           IF WS-CTR GREATER THAN 10
      
               DISPLAY CONT-FILE
               ACCEPT WS-RESP
               DISPLAY PTSCREEN-HEADER
               DISPLAY PTSCREEN-LABEL
      
               DISPLAY SPACES
               MOVE 1 TO WS-CTR.

           MOVE VML-SORTED-ID-TXT     TO WS-ID.
           MOVE VML-SORTED-TITLE-TXT  TO WS-TITLE.
           MOVE VML-SORTED-GENRE-TXT  TO WS-GENRE.
           MOVE VML-SORTED-PRICE-TXT  TO WS-PRICE.
           DISPLAY WS-VML-LINE.
      *----------------------------------------------------------------- 
       200-DISPLAY-TEST.
       DISPLAY "TEST".

       
