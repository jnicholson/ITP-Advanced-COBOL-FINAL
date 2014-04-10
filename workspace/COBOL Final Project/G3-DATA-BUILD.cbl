       program-id. G3_DATA_BUILD as "G3_DATA_BUILD".
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

       DISPLAY 'About to rebuild all ISAM Files, press Y and ENTER to 
      - 'continue'.
       ACCEPT WS-RESP.
       DISPLAY BLANK-SCREEN.

       
       CALL 'G3-BUILD-VUFLIX-MOVIE-LIST'.
       CALL 'G3-BUILD-VUFLIX-WISHLIST'.
       CALL 'G3-BUILD-VUFLIX-PURCHASED'.
       CALL 'G3-BUILD-VISA-ISSUER'.
       CALL 'G3-BUILD-VISA-MERCHANT-LOCATION'.
       CALL 'G3-BUILD-VISA-MERCHANT'.
       CALL 'G3-BUILD-VUFLIX-MEMBER'.
       
       EXIT PROGRAM.
       end program G3_DATA_BUILD.
