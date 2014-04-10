      ******************************************************************
      *PROGRAM:  Merchant Edit Account Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MER-EDIT.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-MER.
      ******************************************************************
       DATA DIVISION.
       COPY FD-MER.
       
       WORKING-STORAGE SECTION.
       COPY WS-MER-EDIT.
       
       01 WS-FILE            PIC X(20) VALUE "G3-VISA-MER-EDIT".
       
       SCREEN SECTION.
       COPY SCREEN-VISA-MER-CHECK.
       COPY SCREEN-VISA-MER-ID.
       COPY SCREEN-VISA-MER-EDIT.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       OPEN I-O MER-FILE.
       DISPLAY IDSCREEN.
       ACCEPT WS-SEARCH-ID.
       PERFORM UNTIL WS-CHECK = 'Y' OR 'y'
           MOVE WS-SEARCH-ID TO MER-ID
           READ MER-FILE
               INVALID KEY
                   DISPLAY 'INVALID ID'
               NOT INVALID KEY
                   PERFORM 100-MOVE
           END-READ
       END-PERFORM.
       PERFORM UNTIL WS-CHECK = 'S' OR 's'
           MOVE SPACES TO WS-CHECK
           MOVE SPACES TO WS-EDIT
           DISPLAY EDITSCREEN
           ACCEPT  WS-EDIT-ID
           ACCEPT  WS-EDIT-NAME
           ACCEPT  WS-EDIT-ADDRESS
           ACCEPT  WS-EDIT-ZIP
           ACCEPT  WS-EDIT-PHONE
           ACCEPT  WS-EDIT-EMAIL
           ACCEPT  WS-EDIT-CC
           ACCEPT  WS-CHECK
       END-PERFORM.
      *****ARE WE WRITING TO THE .TXT OR THE .DAT?
      *****IF WE WRITE TO THE .TXT, WILL WE HAVE TO RE-BUILD?
      *****IF WE WRITE TO THE .DAT, DOES THAT AVOID RE-BUILDING?
      *****IF SO, WHY DIDN'T WE JUST START WITH .DAT FILES?
      *****PRETTY SURE WE WILL HAVE TO WRITE TO .TXT AND RE-BUILD
      *****WROTE THE CODE FOR THE .DAT WAY
       MOVE WS-SEARCH-ID TO MER-ID
       READ MER-FILE
           INVALID KEY
               DISPLAY 'INVALID ID'
           NOT INVALID KEY
               PERFORM 200-EDIT
       END-READ.
       
       CLOSE MER-FILE.
       STOP RUN.
      ******************************************************************
       100-MOVE.
       MOVE SPACES     TO WS-ORIG.
       MOVE MER-ID      TO WS-ORIG-ID.
       MOVE MER-NAME    TO WS-ORIG-NAME.
       MOVE MER-ADDRESS TO WS-ORIG-ADDRESS.
       MOVE MER-PHONE   TO WS-ORIG-PHONE.
       MOVE MER-ZIP     TO WS-ORIG-ZIP.
       
       DISPLAY CHECKSCREEN.
       ACCEPT WS-CHECK.
      ******************************************************************
       200-EDIT.
       IF WS-EDIT-ID NOT EQUAL SPACES
           MOVE WS-EDIT-ID TO MER-ID
       END-IF.
       IF WS-EDIT-NAME NOT EQUAL SPACES 
           MOVE WS-EDIT-NAME TO MER-NAME
       END-IF.
       IF WS-EDIT-ADDRESS NOT EQUAL SPACES
           MOVE WS-EDIT-ADDRESS TO MER-ADDRESS
       END-IF.
       IF WS-EDIT-ZIP NOT EQUAL SPACES
           MOVE WS-EDIT-ZIP TO MER-ZIP
       END-IF.
       IF WS-EDIT-PHONE NOT EQUAL SPACES
           MOVE WS-EDIT-PHONE TO MER-PHONE
       END-IF.