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
       PERFORM UNTIL WS-CHECK = 'S' OR 's'
           MOVE SPACES TO WS-CHECK
           MOVE SPACES TO WS-EDIT
           DISPLAY EDITSCREEN
           ACCEPT  WS-EDIT-ID
           ACCEPT  WS-EDIT-FNAME
           ACCEPT  WS-EDIT-LNAME
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
       MOVE WS-SEARCH-ID TO VM-ID
       READ VM-FILE
           INVALID KEY
               DISPLAY 'INVALID ID'
           NOT INVALID KEY
               PERFORM 200-EDIT
       END-READ.
       
       CLOSE VM-FILE.
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
      ******************************************************************
       200-EDIT.
       IF WS-EDIT-ID NOT EQUAL SPACES
           MOVE WS-EDIT-ID TO VM-ID
       END-IF.
       IF WS-EDIT-FNAME NOT EQUAL SPACES 
           MOVE WS-EDIT-FNAME TO VM-FNAME
       END-IF.
       IF WS-EDIT-LNAME NOT EQUAL SPACES
           MOVE WS-EDIT-LNAME TO VM-LNAME
       END-IF.
       IF WS-EDIT-ADDRESS NOT EQUAL SPACES
           MOVE WS-EDIT-ADDRESS TO VM-ADDRESS
       END-IF.
       IF WS-EDIT-ZIP NOT EQUAL SPACES
           MOVE WS-EDIT-ZIP TO VM-ZIP
       END-IF.
       IF WS-EDIT-PHONE NOT EQUAL SPACES
           MOVE WS-EDIT-PHONE TO VM-PHONE
       END-IF.
       IF WS-EDIT-EMAIL NOT EQUAL SPACES
           MOVE WS-EDIT-EMAIL TO VM-EMAIL
       END-IF.
       IF WS-EDIT-CC NOT EQUAL SPACES
           MOVE WS-EDIT-CC TO VM-CC
       END-IF.
       
       
