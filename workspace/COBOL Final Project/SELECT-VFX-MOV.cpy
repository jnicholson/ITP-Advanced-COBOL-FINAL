      *Skeleton COBOL Copybook - RYAN TIMMERMAN - 4/7/2014
       SELECT VML-FILE-TXT
               ASSIGN TO "VFX-MOV.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT VML-FILE
               ASSIGN TO "VFX-MOV.DAT"
               ORGANIZATION IS INDEXED
               ACCESS IS DYNAMIC
               RECORD      KEY IS VML-ID-KEY
               ALTERNATE   KEY IS VML-TITLE-KEY
                           WITH DUPLICATES
               ALTERNATE   KEY IS VML-GENRE-KEY
                           WITH DUPLICATES
               ALTERNATE   KEY IS VML-PRICE-KEY
                           WITH DUPLICATES
               FILE STATUS IS WS-STAT.


