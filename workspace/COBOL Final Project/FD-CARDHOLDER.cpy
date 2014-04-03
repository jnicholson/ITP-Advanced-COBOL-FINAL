      *Skeleton COBOL Copybook - PIC X(141) - Ryan Timmerman - 4/2/14*
       FD  CARDHOLDER-FILE.
       01  CH-REC.
           03 CH-ID            PIC 9(8).
           03 CH-FNAME         PIC X(15).
           03 CH-LNAME         PIC X(15).
           03 CH-PHONE         PIC 9(10).
           03 CH-EMAIL         PIC X(35).
           03 CH-ZIP           PIC 9(5).
           03 CH-CC            PIC 9(16).
           
       FD  CARDHOLDER-FILE-DAT.
       01  CH-REC-DAT.
           03 CH-ID-DAT         PIC 9(8).
           03 CH-FNAME-DAT      PIC X(15).
           03 CH-LNAME-DAT      PIC X(15).
           03 CH-PHONE-DAT      PIC 9(10).
           03 CH-EMAIL-DAT      PIC X(35).
           03 CH-ZIP-DAT        PIC 9(5).
           03 CH-CC-DAT         PIC 9(16).


