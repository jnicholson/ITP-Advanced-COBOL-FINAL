      *Skeleton COBOL Copybook - PIC X(141) - Ryan Timmerman - 4/2/14*
       FD  CH-FILE-TXT.
       01  CH-REC-TXT.
           03 CH-ID-TXT            PIC 9(8).
           03 CH-FNAME-TXT         PIC X(15).
           03 CH-LNAME-TXT         PIC X(15).
           03 CH-PHONE-TXT         PIC 9(10).
           03 CH-EMAIL-TXT         PIC X(35).
           03 CH-ZIP-TXT           PIC 9(5).
           03 CH-CC-TXT            PIC 9(16).
           
       FD  CH-FILE.
       01  CH-REC.
           03 CH-ID         PIC 9(8).
           03 CH-FNAME      PIC X(15).
           03 CH-LNAME      PIC X(15).
           03 CH-PHONE      PIC 9(10).
           03 CH-EMAIL      PIC X(35).
           03 CH-ZIP        PIC 9(5).
           03 CH-CC         PIC 9(16).

