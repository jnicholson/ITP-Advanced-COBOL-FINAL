      *Skeleton COBOL Copybook - Henry Hurlocker - 4/20/2014
       01  WS-STAT             PIC XX.
       
       01  WS-TSTAMP.
           03  WS-YEAR                     PIC XXXX.
           03  WS-MONTH                    PIC XX.
           03  WS-DAY                      PIC XX.
           03  WS-HOUR                     PIC XX.
           03  WS-MINUTE                   PIC XX. 
           
       01  CAP1-M-VARS.
           03  CAP1-M-SEL               PIC X.
           03  CAP1-M-PROG              PIC X(20) VALUE SPACES.
           03  CAP1-M-EXIT              PIC X     VALUE SPACES.
       01  CAP1-EDIT-VARS.
           03  CAP1-RESP                  PIC X.
           03  CAP1-CHECK                 PIC X.
           03  CAP1-DELETE                PIC X.
           03  CAP1-MSG                   PIC X(10).
           03  CAP1-SEARCH-ID             PIC 9(8).
           03  CAP1-EDIT.
               05  CAP1-ORIG-REC.
                   07  CAP1-ORIG-ID              PIC 9(8).
                   07  CAP1-ORIG-F-NAME          PIC X(20).
                   07  CAP1-ORIG-L-NAME          PIC X(20).
                   07  CAP1-ORIG-ADDRESS         PIC X(20).
                   07  CAP1-ORIG-ZIP             PIC 9(5).
                   07  CAP1-ORIG-EMAIL           PIC X(30).
               05  CAP1-EDIT-REC.
                   07  CAP1-EDIT-ID              PIC 9(8).
                   07  CAP1-EDIT-F-NAME          PIC X(20).
                   07  CAP1-EDIT-L-NAME          PIC X(20).
                   07  CAP1-EDIT-ADDRESS         PIC X(20).
                   07  CAP1-EDIT-ZIP             PIC 9(5).
                   07  CAP1-EDIT-EMAIL           PIC X(30). 
       SCREEN SECTION. 
       01  BLANK-SCREEN.
           03  BLANK SCREEN. 
       01  IDSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEID.
               05  LINE 01 COL 01 PIC X(20) FROM CAP1-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE 'Capital One User Edit'.
               05  LINE 08 COL 35 VALUE 'Select Account'.
               05  LINE 10 COL 19 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 40 PIC X(8) TO CAP1-SEARCH-ID 
                                           FULL REQUIRED AUTO.
               05  LINE 10 COL 49 VALUE '(99999999 = Exit)'.
               05  LINE 11 COL 35 PIC X(10) FROM CAP1-MSG.
       01  CHECKSCREEN.
           03  BLANK SCREEN. 
           03  CHECK.
               05  LINE 01 COL 01 PIC X(20) FROM CAP1-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 34 VALUE "CHECK ACCOUNT".
               05  LINE 08 COL 26 VALUE "ID".
               05  LINE 08 COL 45 PIC X(8) FROM CAP1-ORIG-ID.
               05  LINE 09 COL 26 VALUE "First Name".
               05  LINE 09 COL 45 PIC X(20) FROM CAP1-ORIG-F-NAME.
               05  LINE 10 COL 26 VALUE "Last Name".
               05  LINE 10 COL 45 PIC X(20) FROM CAP1-ORIG-L-NAME.           
               05  LINE 11 COL 26 VALUE "Address".
               05  LINE 11 COL 45 PIC X(20) FROM CAP1-ORIG-ADDRESS.                                                                
               05  LINE 12 COL 26 VALUE "Zip".
               05  LINE 12 COL 45 PIC X(5) FROM CAP1-ORIG-ZIP.
               05  line 13 COL 26 VALUE "Email".
               05  LINE 13 COL 45 PIC X(30) FROM CAP1-ORIG-EMAIL.
               05  LINE 18 COL 28 VALUE "Is this your information?".
               05  LINE 20 COL 30 PIC X TO CAP1-CHECK AUTO.
               05  LINE 20 COL 32 VALUE "Press 'Y' to confirm".              
       01  EDITSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 PIC X(20) FROM CAP1-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE "EDIT ACCOUNT".
               05  LINE 08 COL 16 VALUE "Current".
               05  LINE 08 COL 60 VALUE "Updated".
           03  E-ID.
               05  LINE 10 COL 01 VALUE "ID".
               05  LINE 10 COL 30 PIC X(8) FROM CAP1-ORIG-ID.           
               05  LINE 10 COL 42 VALUE "ID".
               05  LINE 10 COL 70 PIC X(8) TO   CAP1-EDIT-ID.
           03  E-FNAME.
               05  LINE 11 COL 01 VALUE "First Name".
               05  LINE 11 COL 18 PIC X(20) FROM CAP1-ORIG-F-NAME.
               05  LINE 11 COL 42 VALUE "First Name".
               05  LINE 11 COL 60 PIC X(20) TO   CAP1-EDIT-F-NAME.
           03  E-LNAME.
               05  LINE 12 COL 01 VALUE "Last Name".
               05  LINE 12 COL 23 PIC X(20) FROM CAP1-ORIG-L-NAME.
               05  LINE 12 COL 42 VALUE "Last Name".
               05  LINE 12 COL 60 PIC X(20) TO   CAP1-EDIT-L-NAME.         
           03  E-ADDRESS.
               05  LINE 13 COL 01 VALUE "Address".
               05  LINE 13 COL 18 PIC X(20) FROM CAP1-ORIG-ADDRESS.         
               05  LINE 13 COL 42 VALUE "Address".
               05  LINE 13 COL 60 PIC X(20) TO   CAP1-EDIT-ADDRESS.
           03  E-ZIP.
               05  LINE 14 COL 01 VALUE "Zip".
               05  LINE 14 COL 33 PIC X(5) FROM CAP1-ORIG-ZIP.
               05  LINE 14 COL 42 VALUE "Zip".
               05  LINE 14 COL 76 PIC X(5) TO   CAP1-EDIT-ZIP.
           03  E-EMAIL.
               05  LINE 15 COL 01 VALUE "Email".
               05  LINE 15 COL 15 PIC X(20) FROM CAP1-ORIG-EMAIL.
               05  LINE 15 COL 42 VALUE "Email".
               05  LINE 15 COL 60 PIC X(20) TO CAP1-EDIT-EMAIL.
           03  E-SEL.
               05  LINE 20 COL 23 PIC X TO CAP1-CHECK AUTO.
               05  LINE 20 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 20 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 21 COL 29 VALUE "(all other keys start over)".
       01  EDIT-CONFIRM.
           03  EDITING.
               05  LINE 10 COL 38 VALUE "EDITING...".
               05  LINE 11 COL 31 VALUE "PRESS 'ENTER' TO CONTINUE".
           03  EXITING.
               05  LINE 10 COL 29 VALUE 'RETURNING TO CAPITAL ONE MENU'.
               05  LINE 11 COL 31 VALUE "PRESS 'ENTER' TO CONTINUE".
               
               
               