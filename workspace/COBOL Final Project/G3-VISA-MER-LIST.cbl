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
           03 OUT-NAME             PIC X(25).
           03 OUT-EMAIL            PIC X(30).
           03 OUT-PHONE            PIC X(11).

       SCREEN SECTION.
       COPY SCREEN-VISA-MER-LIST.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VISA-MER-LIST' TO VISA-M-PROG.
       OPEN I-O MER-SEQ-FILE.
       PERFORM UNTIL VISA-M-SEL = 'X' OR 'x'
           MOVE SPACE TO VISA-M-SEL
           DISPLAY LISTSCREEN
           PERFORM 100-READ
       END-PERFORM
       EXIT PROGRAM.
      ******************************************************************
       100-READ.
       MOVE 1 TO VISA-M-CTR.
       PERFORM UNTIL VISA-M-EOF = 'Y'
           READ MER-SEQ-FILE 
               AT END                
                   MOVE 'Y' TO VISA-M-EOF 
               NOT AT END
                   PERFORM 200-DISPLAY
       END-PERFORM.
      ******************************************************************
       200-DISPLAY.
           ADD 1 TO VISA-M-CTR.
       IF VISA-M-CTR GREATER THAN 15
           PERFORM 300-LIST-NAVI UNTIL VISA-MER-RESP = 'N' OR 'n' OR 
                                                      'X' OR 'x'
           DISPLAY LISTSCREEN
           DISPLAY MER-LIST-LABEL
           DISPLAY SPACES
           MOVE 1 TO VISA-M-CTR
       END-IF.
       MOVE MER-SEQ-ID     TO OUT-ID.
       MOVE MER-SEQ-NAME   TO OUT-NAME.
       MOVE MER-SEQ-EMAIL  TO OUT-EMAIL.
       MOVE MER-SEQ-PHONE  TO OUT-PHONE.
       DISPLAY OUTPUT-LINE.
      *----------------------------------------------------------------- 
       300-LIST-NAVI.
       MOVE SPACES TO VISA-MER-RESP.
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
       ACCEPT  VISA-MER-RESP.
       
       ELSE
       IF VFX-3-RESP = 'N' OR 'n'
           CONTINUE
       ELSE
       IF VFX-3-RESP = 'X' OR 'x'
           GOBACK
       END-IF.