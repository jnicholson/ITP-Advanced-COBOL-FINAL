      *Skeleton COBOL Copybook - PIC X(65) - Ryan Timmerman - 4/2/14*
       FD  VUFLIX-MOVIE-LIST-FILE.
       01  VML-REC.
           03 VML-ID               PIC 9(8).
           03 VML-TITLE            PIC X(35).
           03 VML-GENRE            PIC X(20).
           03 VML-QUANTITY         PIC 9(2).
           
       FD  VUFLIX-MOVIE-LIST-FILE-DAT.
       01  VML-REC-DAT.
           03 VML-ID-DAT            PIC 9(8).
           03 VML-TITLE-DAT         PIC X(35).
           03 VML-GENRE-DAT         PIC X(20).
           03 VML-QUANTITY-DAT      PIC 9(2).
