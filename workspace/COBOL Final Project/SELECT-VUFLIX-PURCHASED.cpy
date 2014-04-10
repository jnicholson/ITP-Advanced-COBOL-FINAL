      *Skeleton COBOL Copybook - JARROD LEE - 4/9/2014
       SELECT VTP-FILE-TXT
               ASSIGN TO 'VUFLIX-PURCHASED.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT VTP-FILE
               ASSIGN TO 'VUFLIX-PURCHASED.DAT'
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS VTP-ID-KEY
               FILE STATUS IS WS-STAT.
      


