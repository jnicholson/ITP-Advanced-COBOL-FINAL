      *Skeleton COBOL Copybook - JARROD LEE - 4/7/2014
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
       01  IDSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEID.
               05  LINE 01 COL 01 PIC X(15) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 35 VALUE 'Edit Account'.
               05  LINE 10 COL 28 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 49 PIC X(8) TO VFX-2-SEARCH-ID 
                                           FULL REQUIRED AUTO.
               05  LINE 11 COL 28 VALUE '(Exit = 99999999)'.
               05  LINE 11 COL 47 PIC X(10) FROM VFX-2-MSG.
       
       01  CHECKSCREEN.
           03  BLANK SCREEN. 
           03  CHECK.
               05  LINE 01 COL 01 PIC X(15) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 34 VALUE "CHECK ACCOUNT".
               05  LINE 08 COL 26 VALUE "ID".
               05  LINE 08 COL 45 PIC X(8) FROM VFX-2-ORIG-ID.
               05  LINE 09 COL 26 VALUE "First Name".
               05  LINE 09 COL 45 PIC X(15) FROM VFX-2-ORIG-FNAME.
               05  LINE 10 COL 26 VALUE "Last Name".
               05  LINE 10 COL 45 PIC X(15) FROM VFX-2-ORIG-LNAME.
               05  LINE 11 COL 26 VALUE "Address".
               05  LINE 11 COL 45 PIC X(20) FROM VFX-2-ORIG-ADDRESS.
               05  LINE 12 COL 26 VALUE "Zip".
               05  LINE 12 COL 45 PIC X(5) FROM VFX-2-ORIG-ZIP.
               05  LINE 13 COL 26 VALUE "Phone".
               05  LINE 13 COL 45 PIC X(11) FROM VFX-2-ORIG-PHONE.
               05  LINE 14 COL 26 VALUE "Email".
               05  LINE 14 COL 45 PIC X(30) FROM VFX-2-ORIG-EMAIL.
               05  LINE 15 COL 26 VALUE "CC Number".
               05  LINE 15 COL 45 PIC X(16) FROM VFX-2-ORIG-CC.
               05  LINE 18 COL 28 VALUE "Is this information correct?".
               05  LINE 20 COL 30 PIC X TO VFX-2-CHECK AUTO.
               05  LINE 20 COL 32 VALUE "Press 'Y' to confirm".

       01  EDITSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 PIC X(15) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE "EDIT ACCOUNT".
               05  LINE 08 COL 16 VALUE "Current".
               05  LINE 08 COL 60 VALUE "Updated".
               05  LINE 10 COL 01 VALUE "ID".
               05  LINE 10 COL 29 PIC X(8) FROM VFX-2-ORIG-ID.
           03  E-ID.
               05  LINE 10 COL 45 VALUE "ID".
               05  LINE 10 COL 73 PIC X(8) FROM VFX-2-ORIG-ID.
               05  LINE 11 COL 01 VALUE "First Name".
               05  LINE 11 COL 22 PIC X(15) FROM VFX-2-ORIG-FNAME.
           03  E-FNAME.
               05  LINE 11 COL 45 VALUE "First Name".
               05  LINE 11 COL 66 PIC X(15) TO   VFX-2-EDIT-FNAME.
               05  LINE 12 COL 01 VALUE "Last Name".
               05  LINE 12 COL 22 PIC X(15) FROM VFX-2-ORIG-LNAME.
           03  E-LNAME.
               05  LINE 12 COL 45 VALUE "Last Name".
               05  LINE 12 COL 66 PIC X(15) TO   VFX-2-EDIT-LNAME.
               05  LINE 13 COL 01 VALUE "Address".
               05  LINE 13 COL 17 PIC X(20) FROM VFX-2-ORIG-ADDRESS.
           03  E-ADDRESS.
               05  LINE 13 COL 45 VALUE "Address".
               05  LINE 13 COL 61 PIC X(20) TO   VFX-2-EDIT-ADDRESS.
               05  LINE 14 COL 01 VALUE "Zip".
               05  LINE 14 COL 32 PIC X(5) FROM VFX-2-ORIG-ZIP.
           03  E-ZIP.
               05  LINE 14 COL 45 VALUE "Zip".
               05  LINE 14 COL 76 PIC X(5) TO   VFX-2-EDIT-ZIP.
               05  LINE 15 COL 01 VALUE "Phone".
               05  LINE 15 COL 26 PIC X(11) FROM VFX-2-ORIG-PHONE.
           03  E-PHONE.
               05  LINE 15 COL 45 VALUE "Phone".
               05  LINE 15 COL 70 PIC X(11) TO   VFX-2-EDIT-PHONE.
               05  LINE 16 COL 01 VALUE "Email".
               05  LINE 16 COL 07 PIC X(30) FROM VFX-2-ORIG-EMAIL.
           03  E-EMAIL.
               05  LINE 16 COL 45 VALUE "Email".
               05  LINE 16 COL 51 PIC X(30) TO   VFX-2-EDIT-EMAIL.
               05  LINE 17 COL 01 VALUE "CC Number".
               05  LINE 17 COL 21 PIC X(16) FROM VFX-2-ORIG-CC.
           03  E-CC.
               05  LINE 17 COL 45 VALUE "CC Number".
               05  LINE 17 COL 65 PIC X(16) TO   VFX-2-EDIT-CC.
           03  E-SEL.
               05  LINE 20 COL 23 PIC X TO VFX-2-CHECK AUTO.
               05  LINE 20 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 20 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 21 COL 29 VALUE "(all other keys start over)".
