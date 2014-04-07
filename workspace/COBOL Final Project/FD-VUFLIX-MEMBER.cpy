      *Skeleton COBOL Copybook - PIC X() - Ryan Timmerman - 4/2/14*
       FD  VUFLIX-MEMBER-FILE.
       01  VM-REC.
           03  VM-ID           PIC 9(8).
           03  VM-FNAME        PIC X(15).
           03  VM-LNAME        PIC X(15).
           03  VM-ADDRESS      PIC X(20).
           03  VM-PHONE        PIC 9(11).
           03  VM-EMAIL        PIC X(35).
           03  VM-ZIP          PIC 9(5).
           03  VM-CC           PIC 9(16).
           
       FD  VUFLIX-MEMBER-FILE-DAT.
       01  VM-REC-DAT.
           03  VM-ID-DAT       PIC 9(8).
           03  VM-FNAME-DAT    PIC X(15).
           03  VM-LNAME-DAT    PIC X(15).
           03  VM-PHONE-DAT    PIC 9(11).
           03  VM-EMAIL-DAT    PIC X(35).
           03  VM-ZIP-DAT      PIC 9(5).
           03  VM-CC-DAT       PIC 9(16).
       
      


