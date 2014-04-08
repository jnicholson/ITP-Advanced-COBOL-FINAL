      *Skeleton COBOL Copybook - RYAN TIMMERMAN - 4/7/2014
       SELECT VML-FILE-TXT
               ASSIGN TO "VUFLIX-MOVIE-LIST.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT VML-FILE
               ASSIGN TO "VUFLIX-MOVIE-LIST.DAT"
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS VML-ID-KEY
               FILE STATUS IS WS-STAT.


