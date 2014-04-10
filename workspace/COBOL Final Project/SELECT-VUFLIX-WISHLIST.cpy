      *Skeleton COBOL Copybook - JARROD LEE - 4/9/2014
       SELECT VW-FILE-TXT
               ASSIGN TO 'VUFLIX-WISHLIST.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
       
       SELECT VW-FILE
               ASSIGN TO 'VUFLIX-WISHLIST.DAT'
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RANDOM KEY IS VW-ID-KEY
               FILE STATUS IS WS-STAT.
      


