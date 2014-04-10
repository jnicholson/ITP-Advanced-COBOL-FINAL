      *Skeleton COBOL Copybook - JARROD LEE - 4/9/2014
       FD  VTP-FILE-TXT.
       01  VTP-REC-TXT.
           03  VTP-ID-TXT      PIC 9(8).
           03  VTP-VM-ID       PIC 9(8).
           03  VTP-VML-ID      PIC 9(8).
           
       FD  VTP-FILE.
       01  VTP-REC.
           03  VTP-ID-KEY.
               05  VTP-ID      PIC 9(8).
           03  VTP-VM-ID-KEY.
               05  VTP-VM-ID   PIC 9(8).
           03  VTP-VML-ID-KEY.
               05  VTP-VML-ID  PIC 9(8).
      


