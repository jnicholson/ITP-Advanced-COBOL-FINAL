      *******************************************************************
      * PROGRAM       : G3-VISA-ISS-ADD                                 *
      * AUTHOR        : DUSTYNE BROWN, JARROD LEE                       *     
      * CREATION DATE : 4/9/14                                          *
      * LAST EDIT     : 4/12/14        4/16/14                          *
      * PURPOSE       : PROVIDES A PROGRAM BRANCH THAT ALLOWS LOOKING   *
      *                  UP ISSUER DATA, ADD DATA, DELETE AND EDIT      *
      *                  DATA.                                          *
      * ACTIVITY LOG  : 4/9/14-4/12/14 - PROGRAM WRITING                *
      *                 4/16/14        - CORRECTED READS FROM           *
      *                                  SEQUENTIAL TO INDEXED          *
      ******************************************************************* 
      
       PROGRAM-ID. G3-VISA-ISS-ADD.
       
      *******************************************************************
        
       ENVIRONMENT DIVISION.
       
       COPY SELECT-ISS.
       
      ******************************************************************* 
       
       DATA DIVISION.
       
       COPY FD-ISS.
       
      *=================================================================*
       
       WORKING-STORAGE SECTION.
       
       COPY WS-ISS.
       
      *=================================================================*
           
       SCREEN SECTION.
       
       COPY SCREEN-ISS.
       
      *******************************************************************
           
       PROCEDURE DIVISION.
       
       100-MAIN.
           MOVE FUNCTION CURRENT-DATE TO WS-TIME-LOG.
           PERFORM UNTIL WS-ACTION-SELECTION = 'B' OR'b'
               DISPLAY SCREEN-TITLE
               DISPLAY SCREEN-MENU-TITLE
               DISPLAY SCREEN-MENU-OPTIONS
               DISPLAY SCREEN-MENU-NAVIGATION
               ACCEPT SCREEN-MENU-NAVIGATION
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 200-SEARCH-ISSUER
                   WHEN '2' PERFORM 300-ADD-ISSUER
                   WHEN '3' PERFORM 400-EDIT-ISSUER
                   WHEN '4' PERFORM 500-DELETE-ISSUER
               END-EVALUATE
           END-PERFORM.
      
      *=================================================================*
            
       200-SEARCH-ISSUER.
           DISPLAY SCREEN-TITLE.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 0 TO WS-ACTION-SELECTION.
           DISPLAY SCREEN-MENU-CLEAR.
           DISPLAY SCREEN-SEARCH-TITLE.
           DISPLAY SCREEN-SEARCH-MENU.
           DISPLAY SCREEN-SEARCH-NAVIGATION.
           ACCEPT SCREEN-SEARCH-NAVIGATION.
           EVALUATE WS-ACTION-SELECTION
               WHEN '1' PERFORM 210-SEARCH-ID
               WHEN '2' PERFORM 220-SEARCH-NAME
               WHEN '3' PERFORM 230-SEARCH-STATE
               WHEN '4' PERFORM 240-SEARCH-EMAIL
               WHEN '5' PERFORM 250-SEARCH-PHONE
               WHEN '6' GOBACK
           END-EVALUATE.
      
      *-----------------------------------------------------------------*
       
       210-SEARCH-ID.
           DISPLAY SCREEN-TITLE.
           MOVE ZERO TO WS-ISS-ORIG.
           DISPLAY SCREEN-SEARCH-ID.
           ACCEPT SCREEN-SEARCH-ID.
           OPEN INPUT ISS-FILE.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1010-SEARCHER-ID
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               DISPLAY SCREEN-SEARCH-DISPLAY-REC
               ACCEPT SCREEN-SEARCH-DISPLAY-REC
           ELSE
               DISPLAY SCREEN-SEARCH-NOT-FOUND-ID
               ACCEPT SCREEN-SEARCH-NOT-FOUND-ID
           END-IF.
           EVALUATE WS-ACTION-SELECTION
               WHEN '1' PERFORM 100-MAIN
               WHEN '2' PERFORM 200-SEARCH-ISSUER
           END-EVALUATE.
      
      *-----------------------------------------------------------------*
       
       220-SEARCH-NAME.
           DISPLAY SCREEN-TITLE.
           MOVE ZEROS TO WS-ISS-ORIG.
           DISPLAY SCREEN-SEARCH-NAME.
           ACCEPT SCREEN-SEARCH-NAME.
           OPEN INPUT ISS-FILE.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END 
                       PERFORM 1020-SEARCHER-NAME
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               DISPLAY SCREEN-SEARCH-DISPLAY-REC
               ACCEPT SCREEN-SEARCH-DISPLAY-REC
           ELSE
               DISPLAY SCREEN-SEARCH-NOT-FOUND-NAME
               ACCEPT SCREEN-SEARCH-NOT-FOUND-NAME
           END-IF.
           EVALUATE WS-ACTION-SELECTION
               WHEN '1' PERFORM 100-MAIN
               WHEN '2' PERFORM 200-SEARCH-ISSUER
           END-EVALUATE.
      
      *-----------------------------------------------------------------*
       
       230-SEARCH-STATE.
           DISPLAY SCREEN-TITLE.
           MOVE ZEROS TO WS-ISS-ORIG.
           DISPLAY SCREEN-SEARCH-STATE.
           ACCEPT SCREEN-SEARCH-STATE.
           OPEN INPUT ISS-FILE.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END 
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1030-SEARCHER-STATE
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               DISPLAY SCREEN-SEARCH-DISPLAY-REC
               ACCEPT SCREEN-SEARCH-DISPLAY-REC
           ELSE
               DISPLAY SCREEN-SEARCH-NOT-FOUND-STATE
               ACCEPT SCREEN-SEARCH-NOT-FOUND-STATE
           END-IF.
           EVALUATE WS-ACTION-SELECTION
               WHEN '1' PERFORM 100-MAIN
               WHEN '2' PERFORM 200-SEARCH-ISSUER
           END-EVALUATE.
      
      *-----------------------------------------------------------------*
       
       240-SEARCH-EMAIL.
           DISPLAY SCREEN-TITLE.
           MOVE ZEROS TO WS-ISS-ORIG.
           DISPLAY SCREEN-SEARCH-EMAIL.
           ACCEPT SCREEN-SEARCH-EMAIL.
           OPEN INPUT ISS-FILE.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1040-SEARCHER-EMAIL
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               DISPLAY SCREEN-SEARCH-DISPLAY-REC
               ACCEPT SCREEN-SEARCH-DISPLAY-REC
           ELSE
               DISPLAY SCREEN-SEARCH-NOT-FOUND-EMAIL
               ACCEPT SCREEN-SEARCH-NOT-FOUND-EMAIL
           END-IF.
           EVALUATE WS-ACTION-SELECTION
               WHEN '1' PERFORM 100-MAIN
               WHEN '2' PERFORM 200-SEARCH-ISSUER
           END-EVALUATE.
      
      *-----------------------------------------------------------------*
       
       250-SEARCH-PHONE.
           DISPLAY SCREEN-TITLE.
           MOVE ZEROS TO WS-ISS-ORIG.
           DISPLAY SCREEN-SEARCH-PHONE.
           ACCEPT SCREEN-SEARCH-PHONE.
           OPEN INPUT ISS-FILE.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1050-SEARCHER-PHONE
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               DISPLAY SCREEN-SEARCH-DISPLAY-REC
               ACCEPT SCREEN-SEARCH-DISPLAY-REC
           ELSE
               DISPLAY SCREEN-SEARCH-NOT-FOUND-PHONE
               ACCEPT SCREEN-SEARCH-NOT-FOUND-PHONE
           END-IF.
           EVALUATE WS-ACTION-SELECTION
               WHEN '1' PERFORM 100-MAIN
               WHEN '2' PERFORM 200-SEARCH-ISSUER
           END-EVALUATE.
      
      *=================================================================*
       
       300-ADD-ISSUER.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Y.
           DISPLAY SCREEN-TITLE.
           MOVE 'N' TO WS-FILE-FOUND.
           MOVE 'N' TO WS-EOF-FLAGGER.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE ISS-ID TO WS-ORIG-ID
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
                       ADD 1 TO WS-X
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           ADD 1 TO WS-ORIG-ID.
           DISPLAY SCREEN-ISSUER-ADD-TITLE.
           DISPLAY SCREEN-ISSUER-ADD-DISPLAY.
           DISPLAY SCREEN-ISSUER-ADD-NAME.
           ACCEPT  SCREEN-ISSUER-ADD-NAME.
           DISPLAY SCREEN-ISSUER-ADD-STREET.
           ACCEPT  SCREEN-ISSUER-ADD-STREET.
           DISPLAY SCREEN-ISSUER-ADD-CITY.
           ACCEPT  SCREEN-ISSUER-ADD-CITY.
           DISPLAY SCREEN-ISSUER-ADD-ZIP.
           ACCEPT  SCREEN-ISSUER-ADD-ZIP.
           DISPLAY SCREEN-ISSUER-ADD-STATE.
           ACCEPT  SCREEN-ISSUER-ADD-STATE.
           DISPLAY SCREEN-ISSUER-ADD-EMAIL.
           ACCEPT  SCREEN-ISSUER-ADD-EMAIL.
           DISPLAY SCREEN-ISSUER-ADD-PHONE.
           ACCEPT  SCREEN-ISSUER-ADD-PHONE.
           DISPLAY SCREEN-ISSUER-ADD-ACCEPT.      
           ACCEPT  SCREEN-ISSUER-ADD-ACCEPT.
           OPEN OUTPUT ISS-FILE.
           PERFORM UNTIL WS-Y = WS-X
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO ISS-REC
               WRITE ISS-REC
               ADD 1 TO WS-Y
           END-PERFORM.
           MOVE WS-ISS-ORIG TO ISS-REC.
           WRITE ISS-REC.
           CLOSE ISS-FILE.
      
      *=================================================================*
       
       400-EDIT-ISSUER.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Y.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-EDITOR-TITLE.
           DISPLAY SCREEN-SEARCH-MENU.
           DISPLAY SCREEN-SEARCH-NAVIGATION.
           ACCEPT SCREEN-SEARCH-NAVIGATION.
           EVALUATE WS-ACTION-SELECTION
               WHEN '1' PERFORM 410-EDITOR-SEARCH-ID
               WHEN '2' PERFORM 420-EDITOR-SEARCH-NAME
               WHEN '3' PERFORM 430-EDITOR-SEARCH-STATE
               WHEN '4' PERFORM 440-EDITOR-SEARCH-EMAIL
               WHEN '5' PERFORM 450-EDITOR-SEARCH-PHONE
               WHEN '0' PERFORM 100-MAIN
           END-EVALUATE.
           
      *-----------------------------------------------------------------*
            
       410-EDITOR-SEARCH-ID.
           MOVE 'N' TO WS-FILE-FOUND.
           MOVE 'N' TO WS-EOF-FLAGGER.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-ID.
           ACCEPT SCREEN-SEARCH-ID
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END 
                       PERFORM 1110-SEARCHER-ID
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               MOVE WS-ORIG-ID TO WS-EDIT-ID
               DISPLAY SCREEN-ISSUER-EDIT-TITLE
               DISPLAY SCREEN-ISSUER-ORIG
               DISPLAY SCREEN-ISSUER-EDIT
               ACCEPT  SCREEN-ISSUER-EDIT-NAME
               ACCEPT  SCREEN-ISSUER-EDIT-STREET
               ACCEPT  SCREEN-ISSUER-EDIT-CITY
               ACCEPT  SCREEN-ISSUER-EDIT-ZIP
               ACCEPT  SCREEN-ISSUER-EDIT-STATE
               ACCEPT  SCREEN-ISSUER-EDIT-EMAIL
               ACCEPT  SCREEN-ISSUER-EDIT-PHONE
               DISPLAY SCREEN-ISSUER-ADD-ACCEPT
               ACCEPT SCREEN-ISSUER-ADD-ACCEPT
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1100-WRITE-OUT
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-ID
               ACCEPT SCREEN-SEARCH-NOT-FOUND-ID
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 400-EDIT-ISSUER
                   WHEN '2' PERFORM 2000-MAIN-REDIRECT
               END-EVALUATE
           END-IF.
      
      *-----------------------------------------------------------------*
            
       420-EDITOR-SEARCH-NAME.
           MOVE 'N' TO WS-FILE-FOUND.
           MOVE 'N' TO WS-EOF-FLAGGER.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-NAME.
           ACCEPT SCREEN-SEARCH-NAME.
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1120-SEARCHER-NAME
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               MOVE WS-ORIG-ID TO WS-EDIT-ID
               DISPLAY SCREEN-ISSUER-EDIT-TITLE
               DISPLAY SCREEN-ISSUER-ORIG
               DISPLAY SCREEN-ISSUER-EDIT
               ACCEPT SCREEN-ISSUER-EDIT-NAME
               ACCEPT SCREEN-ISSUER-EDIT-STREET
               ACCEPT SCREEN-ISSUER-EDIT-CITY
               ACCEPT SCREEN-ISSUER-EDIT-ZIP
               ACCEPT SCREEN-ISSUER-EDIT-STATE
               ACCEPT SCREEN-ISSUER-EDIT-EMAIL
               ACCEPT SCREEN-ISSUER-EDIT-PHONE
               DISPLAY SCREEN-ISSUER-ADD-ACCEPT
               ACCEPT SCREEN-ISSUER-ADD-ACCEPT
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1100-WRITE-OUT
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-NAME
               ACCEPT SCREEN-SEARCH-NOT-FOUND-NAME
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 400-EDIT-ISSUER
                   WHEN '2' PERFORM 100-MAIN
               END-EVALUATE
           END-IF.
      
      *-----------------------------------------------------------------*
           
       430-EDITOR-SEARCH-STATE.
           MOVE 'N' TO WS-FILE-FOUND.
           MOVE 'N' TO WS-EOF-FLAGGER.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-STATE.
           ACCEPT SCREEN-SEARCH-STATE.
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-X
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1130-SEARCHER-STATE
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               MOVE WS-ORIG-ID TO WS-EDIT-ID
               DISPLAY SCREEN-ISSUER-EDIT-TITLE
               DISPLAY SCREEN-ISSUER-ORIG
               DISPLAY SCREEN-ISSUER-EDIT
               ACCEPT SCREEN-ISSUER-EDIT-NAME
               ACCEPT SCREEN-ISSUER-EDIT-STREET
               ACCEPT SCREEN-ISSUER-EDIT-CITY
               ACCEPT SCREEN-ISSUER-EDIT-ZIP
               ACCEPT SCREEN-ISSUER-EDIT-STATE
               ACCEPT SCREEN-ISSUER-EDIT-EMAIL
               ACCEPT SCREEN-ISSUER-EDIT-PHONE
               DISPLAY SCREEN-ISSUER-ADD-ACCEPT
               ACCEPT SCREEN-ISSUER-ADD-ACCEPT
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1100-WRITE-OUT
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-STATE
               ACCEPT SCREEN-SEARCH-NOT-FOUND-STATE
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 400-EDIT-ISSUER
                   WHEN '2' PERFORM 2000-MAIN-REDIRECT
               END-EVALUATE
           END-IF.
      
      *-----------------------------------------------------------------*
       
       440-EDITOR-SEARCH-EMAIL.
           MOVE 'N' TO WS-FILE-FOUND.
           MOVE 'N' TO WS-EOF-FLAGGER.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-EMAIL.
           ACCEPT SCREEN-SEARCH-EMAIL.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1140-SEARCHER-EMAIL
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               MOVE WS-ORIG-ID TO WS-EDIT-ID
               DISPLAY SCREEN-ISSUER-EDIT-TITLE
               DISPLAY SCREEN-ISSUER-ORIG
               DISPLAY SCREEN-ISSUER-EDIT
               ACCEPT SCREEN-ISSUER-EDIT-NAME
               ACCEPT SCREEN-ISSUER-EDIT-STREET
               ACCEPT SCREEN-ISSUER-EDIT-CITY
               ACCEPT SCREEN-ISSUER-EDIT-ZIP
               ACCEPT SCREEN-ISSUER-EDIT-STATE
               ACCEPT SCREEN-ISSUER-EDIT-EMAIL
               ACCEPT SCREEN-ISSUER-EDIT-PHONE
               DISPLAY SCREEN-ISSUER-ADD-ACCEPT
               ACCEPT SCREEN-ISSUER-ADD-ACCEPT
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1100-WRITE-OUT
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-EMAIL
               ACCEPT SCREEN-SEARCH-NOT-FOUND-EMAIL
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 400-EDIT-ISSUER
                   WHEN '2' PERFORM 100-MAIN
               END-EVALUATE
           END-IF.
      
      *-----------------------------------------------------------------*
            
       450-EDITOR-SEARCH-PHONE.
           MOVE 'N' TO WS-FILE-FOUND.
           MOVE 'N' TO WS-EOF-FLAGGER.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-PHONE.
           ACCEPT SCREEN-SEARCH-PHONE.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END 
                       PERFORM 1150-SEARCHER-PHONE
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               MOVE WS-ORIG-ID TO WS-EDIT-ID
               DISPLAY SCREEN-ISSUER-EDIT-TITLE
               DISPLAY SCREEN-ISSUER-ORIG
               DISPLAY SCREEN-ISSUER-EDIT
               ACCEPT SCREEN-ISSUER-EDIT-NAME
               ACCEPT SCREEN-ISSUER-EDIT-STREET
               ACCEPT SCREEN-ISSUER-EDIT-CITY
               ACCEPT SCREEN-ISSUER-EDIT-ZIP
               ACCEPT SCREEN-ISSUER-EDIT-STATE
               ACCEPT SCREEN-ISSUER-EDIT-EMAIL
               ACCEPT SCREEN-ISSUER-EDIT-PHONE
               DISPLAY SCREEN-ISSUER-ADD-ACCEPT
               ACCEPT SCREEN-ISSUER-ADD-ACCEPT
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1100-WRITE-OUT
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-PHONE
               ACCEPT SCREEN-SEARCH-NOT-FOUND-PHONE
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 400-EDIT-ISSUER
                   WHEN '2' PERFORM 100-MAIN
               END-EVALUATE
           END-IF.
      
      *=================================================================*
            
       500-DELETE-ISSUER.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-DELETE-TITLE.
           DISPLAY SCREEN-SEARCH-MENU.
           DISPLAY SCREEN-SEARCH-NAVIGATION.
           ACCEPT SCREEN-SEARCH-NAVIGATION.
           EVALUATE WS-ACTION-SELECTION
               WHEN '1' PERFORM 510-DELETE-ID
               WHEN '2' PERFORM 520-DELETE-NAME
               WHEN '3' PERFORM 530-DELETE-STATE
               WHEN '4' PERFORM 540-DELETE-EMAIL
               WHEN '5' PERFORM 550-DELETE-PHONE
               WHEN '0' PERFORM 100-MAIN
           END-EVALUATE.
      
      *-----------------------------------------------------------------*
            
       510-DELETE-ID.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-ID.
           ACCEPT SCREEN-SEARCH-ID
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1110-SEARCHER-ID
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               DISPLAY SCREEN-ISSUER-DELETE-TITLE
               DISPLAY SCREEN-ISSUER-DELETE-DISPLAY
               DISPLAY SCREEN-DELETE-NAVIGATION
               ACCEPT SCREEN-DELETE-NAVIGATION
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1200-DELETE
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-ID
               ACCEPT SCREEN-SEARCH-NOT-FOUND-ID
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 500-DELETE-ISSUER
                   WHEN '2' PERFORM 100-MAIN
               END-EVALUATE
           END-IF.
      
      *-----------------------------------------------------------------*
            
       520-DELETE-NAME.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-NAME.
           ACCEPT SCREEN-SEARCH-NAME.
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1120-SEARCHER-NAME
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               DISPLAY SCREEN-ISSUER-DELETE-TITLE
               DISPLAY SCREEN-ISSUER-DELETE-DISPLAY
               DISPLAY SCREEN-DELETE-NAVIGATION
               ACCEPT SCREEN-DELETE-NAVIGATION
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1200-DELETE
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-NAME
               ACCEPT SCREEN-SEARCH-NOT-FOUND-NAME
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 500-DELETE-ISSUER
                   WHEN '2' PERFORM 100-MAIN
               END-EVALUATE
           END-IF.
      
      *-----------------------------------------------------------------*
            
       530-DELETE-STATE.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-STATE.
           ACCEPT SCREEN-SEARCH-STATE.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1130-SEARCHER-STATE
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               DISPLAY SCREEN-ISSUER-DELETE-TITLE
               DISPLAY SCREEN-ISSUER-DELETE-DISPLAY
               DISPLAY SCREEN-DELETE-NAVIGATION
               ACCEPT SCREEN-DELETE-NAVIGATION
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1200-DELETE
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-STATE
               ACCEPT SCREEN-SEARCH-NOT-FOUND-STATE
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 500-DELETE-ISSUER
                   WHEN '2' PERFORM 100-MAIN
               END-EVALUATE
           END-IF.
      
      *-----------------------------------------------------------------*
            
       540-DELETE-EMAIL.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-EMAIL.
           ACCEPT SCREEN-SEARCH-EMAIL.
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1140-SEARCHER-EMAIL
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               DISPLAY SCREEN-ISSUER-DELETE-TITLE
               DISPLAY SCREEN-ISSUER-DELETE-DISPLAY
               DISPLAY SCREEN-DELETE-NAVIGATION
               ACCEPT SCREEN-DELETE-NAVIGATION
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1200-DELETE
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-EMAIL
               ACCEPT SCREEN-SEARCH-NOT-FOUND-EMAIL
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 500-DELETE-ISSUER
                   WHEN '2' PERFORM 100-MAIN
               END-EVALUATE
           END-IF.
      
      *-----------------------------------------------------------------*
            
       550-DELETE-PHONE.
           MOVE 'N' TO WS-EOF-FLAGGER.
           MOVE 'N' TO WS-FILE-FOUND.
           DISPLAY SCREEN-TITLE.
           DISPLAY SCREEN-SEARCH-PHONE.
           ACCEPT SCREEN-SEARCH-PHONE
           MOVE 1 TO WS-Y.
           MOVE 1 TO WS-X.
           MOVE 1 TO WS-Z.
           OPEN INPUT ISS-FILE.
           PERFORM UNTIL WS-EOF
               READ ISS-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF-FLAGGER
                   NOT AT END
                       PERFORM 1150-SEARCHER-PHONE
               END-READ
           END-PERFORM.
           CLOSE ISS-FILE.
           OPEN OUTPUT ISS-FILE.
           DISPLAY SCREEN-SEARCH-CLEAR.
           IF WS-FILE-FOUND EQUALS 'Y'
               MOVE WS-TEMP-FILE-STORAGE(WS-Y) TO WS-ISS-ORIG
               DISPLAY SCREEN-ISSUER-DELETE-TITLE
               DISPLAY SCREEN-ISSUER-DELETE-DISPLAY
               DISPLAY SCREEN-DELETE-NAVIGATION
               ACCEPT SCREEN-DELETE-NAVIGATION
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 1200-DELETE
                   WHEN '2' PERFORM 2010-MAIN-REDIRECT
               END-EVALUATE
           ELSE
               MOVE 0 TO WS-Y
               PERFORM 1100-WRITE-OUT
               DISPLAY SCREEN-SEARCH-NOT-FOUND-PHONE
               ACCEPT SCREEN-SEARCH-NOT-FOUND-PHONE
               EVALUATE WS-ACTION-SELECTION
                   WHEN '1' PERFORM 500-DELETE-ISSUER
                   WHEN '2' PERFORM 100-MAIN
               END-EVALUATE
           END-IF.
      
      *=================================================================*
       
       1010-SEARCHER-ID.
           IF  ISS-ID = WS-ORIG-ID
               MOVE ISS-REC TO WS-ISS-ORIG
               MOVE 'Y' TO WS-FILE-FOUND
               MOVE 'Y' TO WS-EOF-FLAGGER
           END-IF.
      
      *-----------------------------------------------------------------*
            
       1020-SEARCHER-NAME.
           IF FUNCTION UPPER-CASE(ISS-NAME) EQUALS
                           FUNCTION UPPER-CASE(WS-ORIG-NAME)
               MOVE ISS-REC TO WS-ISS-ORIG
               MOVE 'Y' TO WS-FILE-FOUND
               MOVE 'Y' TO WS-EOF-FLAGGER
           END-IF.
      
      *-----------------------------------------------------------------*
            
       1030-SEARCHER-STATE.
           IF FUNCTION UPPER-CASE(ISS-STATE) EQUALS
                           FUNCTION UPPER-CASE(WS-ORIG-STATE)
               MOVE ISS-REC TO WS-ISS-ORIG
               MOVE 'Y' TO WS-FILE-FOUND
               MOVE 'Y' TO WS-EOF-FLAGGER
           END-IF.
      
      *-----------------------------------------------------------------*
       
       1040-SEARCHER-EMAIL.
           IF FUNCTION UPPER-CASE(ISS-EMAIL) EQUALS
                           FUNCTION UPPER-CASE(WS-ORIG-EMAIL)
               MOVE ISS-REC TO WS-ISS-ORIG
               MOVE 'Y' TO WS-FILE-FOUND
               MOVE 'Y' TO WS-EOF-FLAGGER
           END-IF.
     
      *-----------------------------------------------------------------*
           
       1050-SEARCHER-PHONE.
           IF WS-ORIG-PHONE = ISS-PHONE
               MOVE ISS-REC TO WS-ISS-ORIG
               MOVE 'Y' TO WS-FILE-FOUND
               MOVE 'Y' TO WS-EOF-FLAGGER
           END-IF.
      
      *=================================================================*
         
       1100-WRITE-OUT.
           PERFORM UNTIL WS-Z = WS-X
               IF WS-Y = WS-Z
                   MOVE WS-ISS-EDIT TO ISS-REC
                   WRITE ISS-REC
                   ADD 1 TO WS-Z
               ELSE 
                   MOVE WS-TEMP-FILE-STORAGE(WS-Z) TO ISS-REC
                   WRITE ISS-REC
                   ADD 1 TO WS-Z
               END-IF
           END-PERFORM.
           CLOSE ISS-FILE.
      
      *-----------------------------------------------------------------*
         
       1110-SEARCHER-ID.
           IF ISS-ID = WS-ORIG-ID
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               MOVE WS-X TO WS-Y
               ADD 1 TO WS-X
               MOVE 'Y' TO WS-FILE-FOUND
          ELSE
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               ADD 1 TO WS-X
          END-IF.
      
      *-----------------------------------------------------------------*
           
       1120-SEARCHER-NAME.
           IF FUNCTION UPPER-CASE(ISS-NAME) EQUALS
                       FUNCTION UPPER-CASE(WS-ORIG-NAME)
              MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
              MOVE WS-X TO WS-Y
              ADD 1 TO WS-X
              MOVE 'Y' TO WS-FILE-FOUND
           ELSE
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               ADD 1 TO WS-X
           END-IF.
      
      *-----------------------------------------------------------------*
            
       1130-SEARCHER-STATE.
           IF FUNCTION UPPER-CASE(ISS-STATE) EQUALS
                       FUNCTION UPPER-CASE(WS-ORIG-STATE)
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               MOVE WS-X TO WS-Y
               ADD 1 TO WS-X
               MOVE 'Y' TO WS-FILE-FOUND
           ELSE
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               ADD 1 TO WS-X
           END-IF.
      
      *-----------------------------------------------------------------*
            
       1140-SEARCHER-EMAIL.
           IF FUNCTION UPPER-CASE(ISS-EMAIL) EQUALS
                       FUNCTION UPPER-CASE(WS-ORIG-EMAIL)
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               MOVE WS-X TO WS-Y
               ADD 1 TO WS-X
               MOVE 'Y' TO WS-FILE-FOUND
           ELSE
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               ADD 1 TO WS-X
           END-IF.
      
      *-----------------------------------------------------------------*
            
       1150-SEARCHER-PHONE.
           IF ISS-PHONE = WS-ORIG-PHONE
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               MOVE WS-X TO WS-Y
               ADD 1 TO WS-X
               MOVE 'Y' TO WS-FILE-FOUND
           ELSE
               MOVE ISS-REC TO WS-TEMP-FILE-STORAGE(WS-X)
               ADD 1 TO WS-X
           END-IF.
      
      *=================================================================*
           
       1200-DELETE.
           PERFORM UNTIL WS-Z = WS-X
               IF WS-Z = WS-Y
                   DISPLAY "TEST3"
                   ADD 1 TO WS-Z
               ELSE
                   DISPLAY "TEST4"
                   MOVE WS-TEMP-FILE-STORAGE(WS-Z) TO ISS-REC
                   WRITE ISS-REC
                   ADD 1 TO WS-Z
               END-IF
           END-PERFORM.
           CLOSE ISS-FILE.
           DISPLAY "TEST".
           PERFORM 100-MAIN.
           
      *=================================================================*
          
       2000-MAIN-REDIRECT.
           PERFORM 1100-WRITE-OUT.
           PERFORM 100-MAIN.
      
      *-----------------------------------------------------------------*
            
       2010-MAIN-REDIRECT.
           MOVE 0 TO WS-Y.
           PERFORM 1100-WRITE-OUT.
           PERFORM 100-MAIN.
           