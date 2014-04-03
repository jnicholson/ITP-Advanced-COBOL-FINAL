      *Skeleton COBOL Copybook - pic x(147) - Jarrod Lee - 3/20/14*
       FD  MERCHANT-LOCATION-FILE.	   
       01  MERLOC-REC.			   
           03  MERLOC-ID	       PIC 9(6).
           03  MERLOC-NAME	       PIC X(40).
           03  MERLOC-ADDRESS      PIC X(40).
           03  MERLOC-ZIP	       PIC 9(5).
           03  MERLOC-PHONE	       PIC 9(11).
           03  MERLOC-ACCOUNT      PIC 9(10).
           03  MERLOC-ROUTE	       PIC 9(9).
           
       FD  MERCHANT-LOCATION-FILE-DAT.	   
       01  MERLOC-REC-DAT.			   
           03  MERLOC-ID-DAT	       PIC 9(6).
           03  MERLOC-NAME-DAT	       PIC X(40).
           03  MERLOC-ADDRESS-DAT      PIC X(40).
           03  MERLOC-ZIP-DAT	       PIC 9(5).
           03  MERLOC-PHONE-DAT	       PIC 9(11).
           03  MERLOC-ACCOUNT-DAT      PIC 9(10).
           03  MERLOC-ROUTE-DAT	       PIC 9(9).


