      ******************************************************************
      *PROGRAM:  Vuflix Purchase titles
      *AUTHOR:   KATIE TRAN
      *DATE:     4/7/2014   
      *ABSTRACT: 
      *THINGS TO DO: CURRENTLY ONLY DISPLAYS TITLES. NEEDS WAY TO 
      *              PURCHASE TITLES  
      ******************************************************************
       PROGRAM-ID. G3-VUFL-3-PT.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VUFLIX-MOVIE-LIST.
      ******************************************************************
       DATA DIVISION.
       COPY FD-VUFLIX-MOVIE-LIST.
       
       WORKING-STORAGE SECTION.
       COPY WS-VUFLIX-PT.
       
       SCREEN SECTION.
       COPY SCREEN-VUFLIX-PT.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       OPEN I-O VML-FILE-TXT.
       DISPLAY PTSCREEN.
       DISPLAY SPACES
       PERFORM UNTIL WS-EOF
               READ VML-FILE-TXT      
                   AT END                
                       MOVE 'Y' TO WS-EOF-FLAG 
                   NOT AT END
                       PERFORM 200-DISPLAY
           END-PERFORM.

           CLOSE VML-FILE-TXT.
      
           DISPLAY END-FILE.
           ACCEPT  WS-RESP.
           EXIT PROGRAM.
           STOP RUN.
      *-----------------------------------------------------------------\
       100-READFILE.
       
      
      *-----------------------------------------------------------------
       200-DISPLAY.
           ADD  1          TO WS-CTR
           IF WS-CTR GREATER THAN 10
      
               DISPLAY CONT-FILE
               ACCEPT WS-RESP
               DISPLAY PTSCREEN
      
               DISPLAY SPACES
               MOVE 1 TO WS-CTR.

           MOVE VML-ID-TXT     TO WS-ID.
           MOVE VML-TITLE-TXT  TO WS-TITLE.
           MOVE VML-GENRE-TXT  TO WS-GENRE.
           MOVE VML-PRICE-TXT  TO WS-PRICE.
           DISPLAY WS-VML-LINE.
      *----------------------------------------------------------------- 

       
