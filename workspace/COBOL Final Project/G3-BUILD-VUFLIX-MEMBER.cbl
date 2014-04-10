      ******************************************************************
      *PROGRAM:  Vuflix MEMBER BUILD PROGRAM
      *AUTHOR:   Jarrod Lee
      *DATE:     4/8/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-BUILD-VUFLIX-MEMBER.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VUFLIX-MEMBER.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VUFLIX-MEMBER.
       
       WORKING-STORAGE SECTION.
        01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.

      ****************************************************************** 
       PROCEDURE DIVISION.
       000-MAIN.
       OPEN INPUT  VM-FILE-TXT.
       OPEN OUTPUT VM-FILE.
       DISPLAY 'VUFLIX-MEMBER-ISAM-BUILD'.
       
       
      
           PERFORM UNTIL WS-CHECK = 'Y'
               READ VM-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE VM-REC FROM VM-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM
      
       
       CLOSE   VM-FILE-TXT
               VM-FILE.

           EXIT PROGRAM.
       STOP RUN.

       
