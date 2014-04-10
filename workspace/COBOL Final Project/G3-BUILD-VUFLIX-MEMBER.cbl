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
       COPY WS-VUFLIX.
       
       SCREEN SECTION.
       COPY SCREEN-VUFLIX-ID.
      ****************************************************************** 
       PROCEDURE DIVISION.
       000-MAIN.
       OPEN INPUT  VM-FILE-TXT.
       OPEN OUTPUT VM-FILE.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'VUFLIX-MEMBER-ISAM-BUILD'.
       DISPLAY SPACES.
       DISPLAY 'About to rebuild, press Y and ENTER to continue'.
       ACCEPT WS-RESP.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'VUFLIX-MEMBER-ISAM-BUILD'.
       DISPLAY SPACES.
       
       IF WS-RESP = 'Y' OR 'y'
           PERFORM UNTIL WS-CHECK = 'Y'
               READ VM-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       PERFORM 100-MOVE-WRITE
           END-PERFORM
       ELSE
           DISPLAY 'WILL NOT REBUILD'
       END-IF.
       
       CLOSE   VM-FILE-TXT
               VM-FILE.
       DISPLAY SPACES.
       DISPLAY 'PRESS ENTER TO CLOSE WINDOW'.
       ACCEPT WS-RESP.
       STOP RUN.
      ******************************************************************
       100-MOVE-WRITE.
       ADD 1 TO WS-CTR.
       IF WS-CTR GREATER THAN 10
           DISPLAY SPACES
           DISPLAY 'PRESS ENTER TO CONTINUE'
           ACCEPT WS-RESP
           DISPLAY BLANK-SCREEN
           DISPLAY 'VUFLIX-MEMBER-ISAM-BUILD'
           DISPLAY SPACES
           MOVE 1 TO WS-CTR.
       MOVE VM-REC-TXT TO VM-REC.
       WRITE VM-REC.
       DISPLAY VM-ID,' ',VM-FNAME,' ',VM-LNAME,' ',WS-STAT.
       
       
