      *Skeleton COBOL Copybook - JARROD LEE - 4/9/2014
       FD  VW-FILE-TXT.
       01  VW-REC-TXT.
           03  VW-ID-TXT       PIC 9(8).
           03  VW-VM-ID-TXT    PIC 9(8).
           03  VW-VML-ID-TXT   PIC 9(8).
           
       FD  VW-FILE.
       01  VW-REC.
           03  VW-ID-KEY.
               05  VW-ID      PIC 9(8).
           03  VW-VM-ID-KEY.
               05  VW-VM-ID   PIC 9(8).
           03  VW-VML-ID-KEY.
               05  VW-VML-ID  PIC 9(8).
      


