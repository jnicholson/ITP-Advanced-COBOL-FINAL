      ******************************************************************
      *PROGRAM:  Vuflix Edit Account Page
      *AUTHOR:   Jarrod Lee
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VUFL-2-EA.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VUFLIX-MEMBER.
      ******************************************************************
       DATA DIVISION.
       COPY FD-VUFLIX-MEMBER.
       
       WORKING-STORAGE SECTION.
       COPY WS-VUFLIX-EDIT.
       
       SCREEN SECTION.
       COPY SCREEN-VUFLIX-CHECK.
       COPY SCREEN-VUFLIX-ID.
       COPY SCREEN-VUFLIX-EDIT.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       OPEN I-O VM-FILE.
       DISPLAY IDSCREEN.
       ACCEPT WS-SEARCH-ID.
       PERFORM UNTIL WS-CHECK = 'Y' OR 'y'
           MOVE WS-SEARCH-ID TO VM-ID
           READ VM-FILE
               INVALID KEY
                   DISPLAY 'INVALID ID'
               NOT INVALID KEY
                   PERFORM 100-MOVE
           END-READ
       END-PERFORM.
       MOVE SPACES TO WS-CHECK.
       PERFORM UNTIL WS-CHECK = 'Y' OR 'y'
           DISPLAY EDITSCREEN.
           ACCEPT  WS-EDIT-ID.
           ACCEPT  WS-EDIT-FNAME.
           ACCEPT  WS-EDIT-LNAME.
           ACCEPT  WS-EDIT-ADDRESS.
           ACCEPT  WS-EDIT-ZIP.
           ACCEPT  WS-EDIT-PHONE.
           ACCEPT  WS-EDIT-EMAIL.
           ACCEPT  WS-EDIT-CC.
       STOP RUN.
      ******************************************************************
       100-MOVE.
       MOVE SPACES     TO WS-ORIG.
       MOVE VM-ID      TO WS-ORIG-ID.
       MOVE VM-FNAME   TO WS-ORIG-FNAME.
       MOVE VM-LNAME   TO WS-ORIG-LNAME.
       MOVE VM-ADDRESS TO WS-ORIG-ADDRESS.
       MOVE VM-PHONE   TO WS-ORIG-PHONE.
       MOVE VM-EMAIL   TO WS-ORIG-EMAIL.
       MOVE VM-ZIP     TO WS-ORIG-ZIP.
       MOVE VM-CC      TO WS-ORIG-CC.
       
       DISPLAY CHECKSCREEN.
       ACCEPT WS-CHECK.
       
       
