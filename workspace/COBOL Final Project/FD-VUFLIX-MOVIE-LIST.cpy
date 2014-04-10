      *Skeleton COBOL Copybook - PIC X(65) - Ryan Timmerman - 4/2/14*
       FD  VML-FILE-TXT.
       01  VML-REC-TXT.
           03  VML-ID-TXT           PIC 9(8).
           03  VML-TITLE-TXT        PIC X(35).
           03  VML-GENRE-TXT        PIC X(10).
           03  VML-PRICE-TXT        PIC 9(2)V99.
           
       FD  VML-FILE.
       01  VML-REC.
           03  VML-ID-KEY.
               05  VML-ID           PIC 9(8).
           03  VML-TITLE            PIC X(35).
           03  VML-GENRE-KEY.
               05  VML-GENRE        PIC X(10).
           03  VML-PRICE            PIC 9(2)V99.
