      ******************************************************************
      *PROGRAM : VFX MEMBER INQURY PROGRAM                             *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/22/2014                                            *
      *ABSTRACT: ALLOWS THE SEARCH FOR A VUFLIX MEMBER                 *
      ******************************************************************
       program-id. G3_VFX_7_MBR_INQ IS INITIAL.
      *----------------------------------------------------------------- 
       environment division.
       COPY 'SELECT-VFX-MBR'.
       configuration section.
      *----------------------------------------------------------------- 
       data division.
       COPY 'FD-VFX-MBR'.
       working-storage section.
       COPY 'WS-VFX'.
      *Screen Section is in screen copybook due to WS needs. 
       COPY 'SCREEN-VFX-7-MBR-INQ'.
       
      *-----------------------------------------------------------------
       procedure division.
       100-MAIN.
           MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
           MOVE 'G3-VFX-7-MBR-INQ' TO VFX-M-PROG.
           OPEN INPUT VM-FILE.
           
           PERFORM UNTIL VFX-M-SEL = 'X' OR 'x'
               MOVE SPACES TO VFX-M-SEL
               DISPLAY MENUSCREEN
               ACCEPT MENUSCREEN
               EVALUATE VFX-M-SEL
                   WHEN '1' PERFORM 200-ID
                   WHEN '2' PERFORM 300-LNAME
                   WHEN '3' PERFORM 400-EMAIL
               END-EVALUATE
           END-PERFORM.
           CLOSE VM-FILE.
           EXIT PROGRAM.
           STOP RUN.
      *-----------------------------------------------------------------
       200-ID.
           DISPLAY IDSCREEN.
           ACCEPT CHOOSEID.
           MOVE VFX-4-SEARCH-ID TO VM-ID-KEY.
           START VM-FILE KEY NOT LESS THAN VM-ID-KEY.
           PERFORM 500-DISPLAY.
      *-----------------------------------------------------------------
       300-LNAME.
           DISPLAY LNAMESCREEN.
           ACCEPT CHOOSELNAME.
           MOVE VFX-7-LNAME TO VM-LNAME-KEY.
           START VM-FILE KEY NOT LESS THAN VM-LNAME-KEY.
           PERFORM 500-DISPLAY.
      *-----------------------------------------------------------------
       400-EMAIL. 
           DISPLAY EMAILSCREEN.
           ACCEPT CHOOSEEMAIL.
           MOVE VFX-7-EMAIL TO VM-EMAIL-KEY.
           START VM-FILE KEY NOT LESS THAN VM-EMAIL-KEY.
           PERFORM 500-DISPLAY.
       
      *-----------------------------------------------------------------
       500-DISPLAY. 
           DISPLAY DISPLAY-SCREEN.
           DISPLAY SPACES.
           DISPLAY SPACES.
           MOVE ZERO TO COUNTER.
           PERFORM UNTIL COUNTER > 15
               ADD 1 TO COUNTER
               READ VM-FILE NEXT RECORD
                   AT END
                       MOVE 20 TO COUNTER
                   NOT AT END
                       MOVE VM-ID TO MBR-ID
                       MOVE VM-LNAME TO MBR-LNAME
                       MOVE VM-FNAME TO MBR-FNAME
                       MOVE VM-EMAIL TO MBR-EMAIL
                       DISPLAY DISP-REC
           END-PERFORM.
           PERFORM UNTIL WS-RESP = 'X' OR 'x'
               MOVE SPACES TO WS-RESP
               IF COUNTER = 16
                   DISPLAY CONT-FILE
                   ACCEPT CONT-FILE
               ELSE
                   DISPLAY END-FILE
                   ACCEPT END-FILE
               END-IF
               IF WS-RESP = 'V' OR 'v'
                   DISPLAY PTSCREEN-EDIT
                   ACCEPT  PTSCREEN-EDIT
                   PERFORM 600-MBR-DISP
               ELSE
               IF WS-RESP = 'N' OR 'n'
                   CONTINUE
               END-IF.
           
      *-----------------------------------------------------------------
       600-MBR-DISP.
           MOVE VFX-7-MBR-ID TO VM-ID-KEY.
           READ VM-FILE KEY VM-ID-KEY
               INVALID KEY
                   DISPLAY ERRORSCREEN
                   ACCEPT WS-RESP
               NOT INVALID KEY
                   DISPLAY MBRSCREEN
                   ACCEPT WS-RESP
           END-READ.        
           PERFORM 100-MAIN.