      ****************************************************************
      *PROGRAM:  Visa Merchant List
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/22/2014   
      *ABSTRACT: self exp.
      ******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. G3-VISA-MER-LIST.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-MER.
      ******************************************************************
       DATA DIVISION.
       COPY FD-MER.
       WORKING-STORAGE SECTION.

       COPY WS-MER.
       
       01 OUTPUT-LINE.
           03 OUT-ID               PIC X(8).
           03 FILLER               PIC X.
           03 OUT-NAME             PIC X(25).
           03 FILLER               PIC X.
           03 OUT-EMAIL            PIC X(30).
           03 FILLER               PIC X.
           03 OUT-PHONE            PIC X(11).


       SCREEN SECTION.
       COPY SCREEN-VISA-MER-LIST.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VISA-MER-LIST' TO VISA-M-PROG.
       OPEN I-O MER-FILE.
       MOVE ZERO TO MER-ID.
       DISPLAY LISTSCREEN
       DISPLAY MER-LIST-LABEL
       START MER-FILE KEY NOT LESS THAN MER-ID                                             
           INVALID KEY
               DISPLAY 'OOPS'
           NOT INVALID KEY
               READ MER-FILE NEXT RECORD
               PERFORM 100-DISPLAY
       END-START.
       PERFORM UNTIL VISA-MER-CHECK = 'Q'
           READ MER-FILE NEXT RECORD
               AT END
                   MOVE 'Q' TO VISA-MER-CHECK
                   MOVE 'Q' TO VISA-M-PROG
               NOT AT END
                   PERFORM 100-DISPLAY
           END-READ
       END-PERFORM.
       PERFORM 400-LIST-END UNTIL VISA-MER-RESP = 'X' OR 'x'
       EXIT PROGRAM.
      ******************************************************************
       100-DISPLAY.
           ADD 1 TO VISA-M-CTR.
       IF VISA-M-CTR GREATER THAN 15
           PERFORM 300-LIST-NAVI UNTIL VISA-MER-RESP = 'N' OR 'n' OR 
                                                      'X' OR 'x'
           DISPLAY BLANK-SCREEN
           DISPLAY LISTSCREEN
           DISPLAY MER-LIST-LABEL
           DISPLAY SPACES
           MOVE 1 TO VISA-M-CTR
       END-IF.
       MOVE MER-ID     TO OUT-ID.
       MOVE MER-NAME   TO OUT-NAME.
       MOVE MER-EMAIL  TO OUT-EMAIL.
       MOVE MER-PHONE  TO OUT-PHONE.
       DISPLAY OUTPUT-LINE.
      *----------------------------------------------------------------- 
       300-LIST-NAVI.
       DISPLAY CONT-FILE.
       ACCEPT  VISA-MER-RESP.
       IF VISA-MER-RESP = 'N' OR 'n'
           CONTINUE
       ELSE
       IF VISA-MER-RESP = 'X' OR 'x'
           GOBACK
       END-IF.
      ******************************************************************
       400-LIST-END.
           DISPLAY END-FILE.
       ACCEPT  VISA-MER-RESP.