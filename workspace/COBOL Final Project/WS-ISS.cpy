      *******************************************************************
      * FILE         : SCREEN-ISS              
      * AUTHOR       : Dustyne Brown                                    *
      * DATE         : 4/8/14                                           *
      * LAST EDIT    : 4/12/14                                          *
      * PURPOSE      : PROVIDE ALL VARIABLES NEEDED IN ORDER TO PROVIDE *
      *                    CONTROL FOR THE G3-VISA-ISS-ADD PROGRAM      *
      *******************************************************************     
       01  WS-TIME-LOG.
           03  WS-DATE.
               05  WS-YEAR             PIC X(4).
               05  WS-MONTH            PIC X(2).
               05  WS-DAY              PIC X(2).
           03  WS-TIME.
               05  WS-HOUR             PIC X(2).
               05  WS-MIN              PIC X(2).
               
       01  WS-SCREEN-NAVIGATION-VARIABLES.
           03  WS-ACTION-SELECTION         PIC X.
           03  WS-FILE-FOUND              PIC X VALUE 'N'.
               88  WS-FILE                      VALUE 'Y'.
               
       01  WS-ISSUER-DATA.
               03  WS-ISS-ORIG.
                   05  WS-ORIG-ID               PIC 9(3).
                   05  WS-ORIG-NAME             PIC X(20).
                   05  WS-ORIG-ADDRESS.
                       07  WS-ORIG-STREET  PIC X(20).
                       07  WS-ORIG-CITY    PIC X(20).
                       07  WS-ORIG-ZIP     PIC 9(5).
                       07  WS-ORIG-STATE   PIC X(2).
                   05  WS-ORIG-EMAIL        PIC X(20).
                   05  WS-ORIG-PHONE       PIC 9(11).
               03  WS-ISS-EDIT.
                   05  WS-EDIT-ID               PIC 9(3).
                   05  WS-EDIT-NAME             PIC X(20).
                   05  WS-EDIT-ADDRESS.
                       07  WS-EDIT-STREET  PIC X(20).
                       07  WS-EDIT-CITY    PIC X(20).
                       07  WS-EDIT-ZIP     PIC 9(5).
                       07  WS-EDIT-STATE   PIC X(2).
                   05  WS-EDIT-EMAIL        PIC X(20).
                   05  WS-EDIT-PHONE       PIC 9(11).
               
       01  WS-WORK-VARIABLES.
           03  WS-EOF-FLAGGER          PIC X VALUE 'N'.
               88  WS-EOF                    VALUE 'Y'.
           03  WS-TEMP-FILE-STORAGE    PIC X(111) OCCURS 50 TIMES.
           03  WS-X                    PIC 99 VALUE 1.
           03  WS-Y                    PIC 99 VALUE 1.
           03  WS-Z                    PIC 99 VALUE 1.


