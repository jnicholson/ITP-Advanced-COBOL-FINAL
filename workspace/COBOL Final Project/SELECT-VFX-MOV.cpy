      *Skeleton COBOL Copybook - RYAN TIMMERMAN - 4/7/2014
       SELECT VML-FILE-TXT
               ASSIGN TO "VFX-MOV.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT VML-FILE
               ASSIGN TO "VFX-MOV.DAT"
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS VML-ID-KEY
               FILE STATUS IS WS-STAT.

       SELECT SORT-FILE
               ASSIGN TO SYSWORK.
               
       SELECT VML-SORTED-FILE-TXT
               ASSIGN TO "VFX-SRT-MOV.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.

