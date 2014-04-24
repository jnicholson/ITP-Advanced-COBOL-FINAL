      *Skeleton COBOL Copybook - PIC X() - Ryan Timmerman - 4/2/14*
       FD  VM-FILE-TXT.
       01  VM-REC-TXT.
           03  VM-ID-TXT           PIC 9(8).
           03  VM-FNAME-TXT        PIC X(15).
           03  VM-LNAME-TXT        PIC X(15).
           03  VM-ADDRESS-TXT      PIC X(20).
           03  VM-PHONE-TXT        PIC 9(11).
           03  VM-EMAIL-TXT        PIC X(30).
           03  VM-ZIP-TXT          PIC 9(5).
           03  VM-CC-TXT           PIC 9(8).
           
       FD  VM-FILE.
       01  VM-REC.
           03  VM-ID-KEY.
               05  VM-ID       PIC 9(8).
           03  VM-FNAME        PIC X(15).
           03  VM-LNAME-KEY.
               05  VM-LNAME    PIC X(15).
           03  VM-ADDRESS      PIC X(20).
           03  VM-PHONE        PIC 9(11).
           03  VM-EMAIL-KEY.
               05  VM-EMAIL    PIC X(30).
           03  VM-ZIP          PIC 9(5).
           03  VM-CC           PIC 9(8).
       
      


