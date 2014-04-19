      *Skeleton COBOL Copybook - PIC X(104) - 4/2/14                    *
      *Authors: Ryan Timmerman - Henry Hurlocker - Devin Leaman         *  
       
       FD  CH-FILE.
       01  CH-REC.
           03 CH-ID-KEY.
               05  CH-ID    PIC 9(8).
           03 CH-FNAME      PIC X(20).
           03 CH-LNAME-KEY.
               05  CH-LNAME PIC X(15).
           03 CH-STREET     PIC X(20).
           03 CH-CITY       PIC X(20).
           03 CH-STATE      PIC XX.
           03 CH-ZIP        PIC 9(5).
           03 CH-EMAIL      PIC X(30).  


