      *******************************************************************
      * FILE         : FD-ISS                                           *
      * AUTHOR       : Jarrod Lee, Dustyne Brown                        *    
      * DATE         : 3/20/14     4/8/14                               *    
      * LAST EDIT    : 3/20/14     4/12/14                              *    
      * PURPOSE      : PROVIDE RECORD CONTROL FOR BOTH G3-BLD-VISA-ISS  *
      *                    AND G3-VISA-ISS-ADD                          *
      ******************************************************************* 
       FD  ISS-FILE-TXT.		   
       01  ISS-REC-TXT         PIC X(101).		   
           
           
       FD  ISS-FILE.		   
       01  ISS-REC.	
           03  ISS-ID-KEY.
               05  ISS-ID      PIC 9(3).
           03  ISS-NAME-KEY.
               05  ISS-NAME    PIC X(20).
           03  ISS-ADDRESS.
               05  ISS-STREET  PIC X(20).
               05  ISS-CITY    PIC X(20).
               05  ISS-ZIP     PIC 9(5).
               05  ISS-STATE   PIC X(2).
           03  ISS-EMAIL       PIC X(20).
           03  ISS-PHONE	   PIC 9(11).