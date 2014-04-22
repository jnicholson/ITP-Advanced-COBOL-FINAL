      ***************************************************************** 
      *PROGRAM:  Merchant Search Email
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
       COPY WS-MER.
       
       01 WS-CTR    PIC 99.
       01 WS-SCTR    PIC 99.
       01 WS-BLANKS  PIC X(25) VALUE SPACES.
       
       SCREEN SECTION.
       COPY SCREEN-VISA-MER-SEARCH.
       COPY SCREEN-VISA-MER-CHECK.
      ******************************************************************
        PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-MER-SEARCH-EMAIL' TO VISA-M-PROG.
       OPEN I-O MER-FILE.
       PERFORM 100-SEARCH.
       CLOSE MER-FILE.
       EXIT PROGRAM.
      ******************************************************************
       100-SEARCH.
       DISPLAY IDSCREEN.
       ACCEPT S-EMAIL.
       ACCEPT S-PHONE.
       IF VISA-MER-SEARCH-EMAIL = '999999999999999999999999999999'
           EXIT PROGRAM
       END-IF.
       IF VISA-MER-SEARCH-EMAIL NOT EQUAL SPACES
           MOVE VISA-MER-SEARCH-EMAIL TO MER-EMAIL
       ELSE
           MOVE VISA-MER-SEARCH-PHONE TO MER-PHONE
       END-IF.
       PERFORM UNTIL VISA-MER-CHECK = 'Y' OR 'y'
           MOVE SPACES TO VISA-MER-CHECK
           IF MER-EMAIL NOT EQUAL SPACES
               READ MER-FILE KEY IS MER-EMAIL-KEY
                   INVALID KEY
                       MOVE 'INVALID ID' TO VISA-MER-MSG
                   NOT INVALID KEY
                       MOVE SPACES TO VISA-MER-MSG
                       PERFORM 200-MOVE
               END-READ
               IF VISA-MER-RESP = 'C' OR 'c'
                   CONTINUE
               ELSE
                   DISPLAY IDSCREEN
                   ACCEPT S-EMAIL
                   ACCEPT S-PHONE
               END-IF
           ELSE
               READ MER-FILE KEY IS MER-EMAIL-KEY
                   
               INVALID KEY
                       MOVE 'INVALID ID' TO VISA-MER-MSG
                   NOT INVALID KEY
                       MOVE SPACES TO VISA-MER-MSG
                       PERFORM 200-MOVE
               END-READ
               IF VISA-MER-RESP = 'C' OR 'c'
                   CONTINUE
               ELSE
                   DISPLAY IDSCREEN
                   ACCEPT S-EMAIL
                   ACCEPT S-PHONE
               END-IF
           END-IF
       END-PERFORM.
      ******************************************************************
       200-MOVE.
       MOVE 'C'                TO VISA-MER-RESP.
       MOVE SPACES             TO VISA-MER-ORIG.
       MOVE MER-ID             TO VISA-MER-ORIG-ID.
       MOVE MER-NAME           TO VISA-MER-ORIG-NAME.
       MOVE MER-ADDRESS        TO VISA-MER-ORIG-ADDRESS.
       MOVE MER-PHONE          TO VISA-MER-ORIG-PHONE.
       MOVE MER-EMAIL          TO VISA-MER-ORIG-EMAIL.
       MOVE MER-ZIP            TO VISA-MER-ORIG-ZIP.
       MOVE MER-ACCOUNT        TO VISA-MER-ORIG-ACCT.
       MOVE MER-ROUTE          TO VISA-MER-ORIG-ROUTE
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF VISA-MER-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO VISA-MER-RESP
           PERFORM 100-SEARCH
       END-IF.
      ******************************************************************