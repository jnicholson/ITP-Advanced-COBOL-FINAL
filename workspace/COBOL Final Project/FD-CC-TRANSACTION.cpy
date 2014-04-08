      *Skeleton COBOL Copybook - PIC X(44) - Ryan Timmerman - 4/2/14*
       FD  CCT-FILE-TXT.
       01  CCT-REC-TXT.
           03  CCT-ID-TXT                PIC 9(8).
           03  CCT-DATE-TXT              PIC 9(8).
           03  CCT-AMT-TXT               PIC 9(10)V99.
           03  CCT-MOVIE-ID-TXT          PIC 9(8).
           03  CCT-CARD-ID-TXT           PIC 9(8).
       
       FD  CCT-FILE.
       01  CCT-REC.
           03  CCT-ID-KEY.
               05 CCT-ID         PIC 9(8).
           03  CCT-DATE          PIC 9(8).
           03  CCT-AMT           PIC 9(10)V99.
           03  CCT-MOVIE-ID      PIC 9(8).
           03  CCT-CARD-ID       PIC 9(8).

