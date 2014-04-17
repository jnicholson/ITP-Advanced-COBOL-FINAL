      *Skeleton COBOL Copybook - JARROD LEE - 4/9/2014
       SELECT VTP-FILE-TXT
               ASSIGN TO 'VFX-PUR.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT VTP-FILE
               ASSIGN TO 'VFX-PUR.DAT'
               ORGANIZATION IS INDEXED
               ACCESS IS DYNAMIC
               RECORD KEY      IS VTP-ID-KEY
               ALTERNATE KEY   IS VTP-VML-ID-KEY
               FILE STATUS IS WS-STAT.
      


