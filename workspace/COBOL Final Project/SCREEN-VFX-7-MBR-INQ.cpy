      *Skeleton COBOL Copybook
       01 WS-RESP                  PIC X.
       01 COUNTER                  PIC 99      VALUE ZERO.
       01 DISP-REC.
           03 MBR-ID               PIC X(8).
           03 FILLER               PIC X(3).
           03 MBR-LNAME            PIC X(15).
           03 FILLER               PIC X(4).
           03 MBR-FNAME            PIC X(15).
           03 FILLER               PIC X(4).
           03 MBR-EMAIL            PIC X(30).
       01  VFX-7-SEARCH-ID         PIC 9(8).
       01  VFX-7-LNAME             PIC X(15).    
       01  VFX-7-EMAIL             PIC X(30).
       01  VFX-7-MBR-ID            PIC 9(8).
       01  VFX-7-CITY              PIC X(30).
       01  VFX-7-STATE             PIC X(2).
       
       SCREEN SECTION.
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
      
       01  MENUSCREEN.
           03  BLANK SCREEN. 
           03  HEADER.
               05  LINE 01 COL 01 PIC X(15)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
           03  MENU.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 34 VALUE 'MEMBER INQUIRY'.
               05  LINE 10 COL 31 VALUE "    1) Member ID   ".          
               05  LINE 11 COL 31 VALUE "    2) Last Name     ".
               05  LINE 12 COL 31 VALUE "    3) Email   ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X        TO VFX-M-SEL AUTO.
               
       01  IDSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEID.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 34 VALUE 'Member Inquiry'.
               05  LINE 10 COL 27 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 48 PIC X(8)     TO VFX-7-SEARCH-ID 
                                               FULL REQUIRED AUTO.
               05  LINE 11 COL 46 PIC X(10)    FROM VFX-2-MSG.        

       01  LNAMESCREEN.
           03  BLANK SCREEN.
           03  CHOOSELNAME.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 34 VALUE 'Member Inquiry'.
               05  LINE 10 COL 27 VALUE 'Enter Last Name to continue'.
               05  LINE 11 COL 35 PIC X(15)    TO VFX-7-LNAME 
                                               REQUIRED.
               05  LINE 11 COL 46 PIC X(10)    FROM VFX-2-MSG.        

       01  EMAILSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEEMAIL.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 34 VALUE 'Member Inquiry'.
               05  LINE 10 COL 27 VALUE 'Enter Email Address to
      -            'continue'.
               05  LINE 11 COL 35 PIC X(30)    TO VFX-7-EMAIL 
                                               REQUIRED.
               05  LINE 11 COL 46 PIC X(10)    FROM VFX-2-MSG.

       01 DISPLAY-SCREEN.
           03  BLANK SCREEN.
           03  HEADINGS.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 04 COL 01 VALUE 'MEMBER ID'.
               05  LINE 04 COL 12 VALUE 'LAST NAME'.
               05  LINE 04 COL 31 VALUE 'FIRST NAME'.
               05  LINE 04 COL 50 VALUE 'E-MAIL ADDRESS'.
               
       01  CONT-FILE.
           03  LINE 21 COL 01 VALUE "PRESS 'V' TO VIEW MEMBER, ".
           03  LINE 21 COL 26 VALUE "'N' FOR NEXT PAGE, ".
           03  LINE 21 COL 45 VALUE "OR 'X' TO EXIT.".
           03  LINE 21 COL 55 PIC X            TO WS-RESP AUTO.
           
       01  END-FILE.
           03  LINE 21 COL 01 VALUE "PRESS 'V' TO VIEW MEMBER, ".
           03  LINE 21 COL 26 VALUE "OR 'X' TO EXIT.".
           03  LINE 21 COL 55 PIC X            TO WS-RESP AUTO. 
           
       01  PTSCREEN-EDIT.
           03  LINE 23 COL 01 VALUE "ENTER MEMBER ID: ".
           03  LINE 23 COL 18 PIC X(8)         TO VFX-7-MBR-ID 
                                               FULL REQUIRED AUTO.
           03  LINE 24 COL 01 PIC X(80)        VALUE SPACES.    

       01  MBRSCREEN.
           03  BLANK SCREEN. 
           03  MBR.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 32 VALUE "MEMBER INFORMATION".
               05  LINE 08 COL 26 VALUE "ID".
               05  LINE 08 COL 45 PIC X(8)     FROM VM-ID.
               05  LINE 09 COL 26 VALUE "First Name".
               05  LINE 09 COL 45 PIC X(15)    FROM VM-FNAME.
               05  LINE 10 COL 26 VALUE "Last Name".
               05  LINE 10 COL 45 PIC X(15)    FROM VM-LNAME.
               05  LINE 11 COL 26 VALUE "Address".
               05  LINE 11 COL 45 PIC X(20)    FROM VM-ADDRESS.
               05  LINE 12 COL 26 VALUE "City".
               05  LINE 12 COL 45 PIC X(30)    FROM VFX-7-CITY.
               05  LINE 13 COL 26 VALUE "State".
               05  LINE 13 COL 45 PIC X(2)     FROM VFX-7-STATE.
               05  LINE 14 COL 26 VALUE "Zip".
               05  LINE 14 COL 45 PIC X(5)     FROM VM-ZIP.
               05  LINE 15 COL 26 VALUE "Phone".
               05  LINE 15 COL 45 PIC X(11)    FROM VM-PHONE.
               05  LINE 16 COL 26 VALUE "Email".
               05  LINE 16 COL 45 PIC X(30)    FROM VM-EMAIL.
               05  LINE 17 COL 26 VALUE "CC Number".
               05  LINE 17 COL 45 PIC X(8)    FROM VM-CC.
               05  LINE 21 COL 31 VALUE "Press Enter to Return.".
       
       01  ERRORSCREEN.
           03  DISPERROR.
               05  BLANK SCREEN.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 10 COL 30 VALUE "Invalid Member ID".
               05  LINE 11 COL 24 VALUE "Press Enter to Return to Menu".
        