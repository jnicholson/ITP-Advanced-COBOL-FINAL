      ******************************************************************
      *PROGRAM : MASTER BUILD PROGRAM                                  *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/09/2014                                            *
      *ABSTRACT: Calls all build programs for project                  *
      ******************************************************************
       program-id. G3_BUILD.
      *----------------------------------------------------------------- 
       environment division.
       configuration section.
      *-----------------------------------------------------------------
       data division.
       working-storage section.
       
       01  MISC.
           03  WS-RESP                         PIC X.
           SCREEN SECTION.
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
       
      *-----------------------------------------------------------------
       procedure division.
       100-MAIN.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'About to rebuild all ISAM Files, press Y and ENTER to 
      - 'continue'.
       ACCEPT WS-RESP.
       DISPLAY BLANK-SCREEN.

       
       CALL 'G3-BLD-VFX-MOV'.
       CALL 'G3-BLD-VFX-WISH'.
       CALL 'G3-BLD-VFX-PUR'.
       CALL 'G3-BLD-VISA-ISS'.
       CALL 'G3-BLD-VISA-MERLOC'.
       CALL 'G3-BLD-VISA-MER'.
       CALL 'G3-BLD-VFX-MBR'.
       
       EXIT PROGRAM.
       
