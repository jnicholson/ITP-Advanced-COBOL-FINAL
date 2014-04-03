      *Skeleton COBOL Copybook - PIC X(131) - Jarrod Lee - 3/20/14*
       FD  MERCHANT-FILE.		   
       01  MER-REC.			   
           03  MER-ID		       PIC 9(6).
           03  MER-NAME	           PIC X(24).
           03  MER-ADDRESS	       PIC X(40).
           03  MER-ZIP		       PIC 9(5).
           03  MER-PHONE	       PIC 9(11). 
           03  MER-ACCOUNT	       PIC 9(10).
           03  MER-ROUTE	       PIC 9(9).
           
       FD  MERCHANT-FILE-DAT.		   
       01  MER-REC-DAT.			   
           03  MER-ID-DAT		   PIC 9(6).
           03  MER-NAME-DAT	       PIC X(24).
           03  MER-ADDRESS-DAT	   PIC X(40).
           03  MER-ZIP-DAT		   PIC 9(5).
           03  MER-PHONE-DAT	   PIC 9(11). 
           03  MER-ACCOUNT-DAT	   PIC 9(10).
           03  MER-ROUTE-DAT	   PIC 9(9).


