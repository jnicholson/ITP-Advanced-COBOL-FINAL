      *Skeleton COBOL Copybook - PIC X(147) - Jarrod Lee - 3/20/14*
       FD  ISSUER-FILE.		   
       01  ISS-REC.			   
           03  ISS-ID		       PIC 9(6).
           03  ISS-NAME            PIC X(40).
           03  ISS-ADDRESS         PIC X(40).
           03  ISS-ZIP		       PIC 9(5).
           03  ISS-PHONE	       PIC 9(11).
           03  ISS-ACCOUNT	       PIC 9(10).
           03  ISS-ROUTE	       PIC 9(9).
           
       FD  ISSUER-FILE-DAT.		   
       01  ISS-REC-DAT.			   
           03  ISS-ID-DAT		   PIC 9(6).
           03  ISS-NAME-DAT        PIC X(40).
           03  ISS-ADDRESS-DAT     PIC X(40).
           03  ISS-ZIP-DAT		   PIC 9(5).
           03  ISS-PHONE-DAT	   PIC 9(11).
           03  ISS-ACCOUNT-DAT	   PIC 9(10).
           03  ISS-ROUTE-DAT	   PIC 9(9).


