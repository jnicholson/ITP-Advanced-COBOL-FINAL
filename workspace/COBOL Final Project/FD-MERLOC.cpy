      *Skeleton COBOL Copybook - pic x(147) - Jarrod Lee - 3/20/14*
       FD  MERLOC-FILE-TXT.	   
       01  MERLOC-REC-TXT.			   
           03  MERLOC-ID-TXT	       PIC 9(8).
           03  MERLOC-NAME-TXT	       PIC X(40).
           03  MERLOC-ADDRESS-TXT      PIC X(40).
           03  MERLOC-ZIP-TXT	       PIC 9(5).
           03  MERLOC-PHONE-TXT	       PIC 9(11).
           03  MERLOC-ACCOUNT-TXT      PIC 9(10).
           03  MERLOC-ROUTE-TXT	       PIC 9(9).
           
       FD  MERLOC-FILE.	   
       01  MERLOC-REC.
           03  MERLOC-ID-KEY.
               05  MERLOC-ID	   PIC 9(8).
           03  MERLOC-NAME-KEY.
               05  MERLOC-NAME	   PIC X(40).
           03  MERLOC-ADDRESS      PIC X(40).
           03  MERLOC-ZIP	       PIC 9(5).
           03  MERLOC-PHONE	       PIC 9(11).
           03  MERLOC-ACCOUNT      PIC 9(10).
           03  MERLOC-ROUTE	       PIC 9(9).


