      *Skeleton COBOL Copybook - PIC X(44) - Ryan Timmerman - 4/2/14*
       FD  CC-TRANSACTION-FILE.
       01  TR-REC.
           03 TR-ID                PIC 9(8).
           03 TR-DATE              PIC 9(8).
           03 TR-AMT               PIC 9(10)V99.
           03 TR-MOVIE-ID          PIC 9(8).
           03 TR-CARD-ID           PIC 9(8).
       
       FD  CC-TRANSACTION-FILE-DAT.
       01  TR-REC-DAT.
           03 TR-ID-DAT            PIC 9(8).
           03 TR-DATE-DAT          PIC 9(8).
           03 TR-AMT-DAT           PIC 9(10)V99.
           03 TR-MOVIE-ID-DAT      PIC 9(8).
           03 TR-CARD-ID-DAT       PIC 9(8).

