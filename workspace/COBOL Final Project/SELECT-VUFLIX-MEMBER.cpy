      *Skeleton COBOL Copybook - RYAN TIMMERMAN - 4/7/2014
       SELECT VM-FILE-TXT
               ASSIGN TO "VUFLIX-MEMBER.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT VM-FILE
               ASSIGN TO "VUFLIX-MEMBER.DAT"
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS VM-ID-KEY
               FILE STATUS IS WS-STAT.

