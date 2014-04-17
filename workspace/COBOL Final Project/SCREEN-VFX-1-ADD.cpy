      *Skeleton COBOL Copybook - JARROD LEE - 4/17/14
       01  BLANK-SCREEN.
           03  BLANK SCREEN..
       
       01  ADDSCREEN.
           03  BLANK SCREEN. 
           03  A-ADD.
               05  LINE 01 COL 01 PIC X(15) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE "NEW ACCOUNT".
               05  LINE 08 COL 26 VALUE "ID".
               05  LINE 08 COL 45 PIC X(8) FROM VFX-1-NEW-ID.
               05  LINE 09 COL 26 VALUE "First Name".
           03  A-FNAME.
               05  LINE 09 COL 45 PIC X(15) TO VFX-1-NEW-FNAME.
               05  LINE 10 COL 26 VALUE "Last Name".
           03  A-LNAME.    
               05  LINE 10 COL 45 PIC X(15) TO VFX-1-NEW-LNAME.
               05  LINE 11 COL 26 VALUE "Address".
           03  A-ADDRESS.    
               05  LINE 11 COL 45 PIC X(20) TO VFX-1-NEW-ADDRESS.
               05  LINE 12 COL 26 VALUE "Zip".
           03  A-ZIP.
               05  LINE 12 COL 45 PIC X(5) TO VFX-1-NEW-ZIP.
               05  LINE 13 COL 26 VALUE "Phone".
           03  A-PHONE.
               05  LINE 13 COL 45 PIC X(11) TO VFX-1-NEW-PHONE.
               05  LINE 14 COL 26 VALUE "Email".
           03  A-EMAIL.
               05  LINE 14 COL 45 PIC X(30) TO VFX-1-NEW-EMAIL.
               05  LINE 15 COL 26 VALUE "CC Number".
           03  A-CC.
               05  LINE 15 COL 45 PIC X(16) TO VFX-1-NEW-CC.
           03  A-SEL.
               05  LINE 20 COL 23 PIC X TO VFX-1-CHECK AUTO.
               05  LINE 20 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 20 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 21 COL 29 VALUE "(all other keys start over)".
       
       
       
       
       
       
       
       