(defun EZA ( )

        (defun myerror (msg)
          (setvar 'lunits *lunits)
          (setq *error* myerror)
          )
          (princ "Pres Enter after finish")
          (setq *error* myerror)
          
          (setq *lunits (getvar 'lunits))
          (setvar 'lunits 4)  ;to accept any input format, incl scientific and arch.
          (if (numberp addsum)
              (progn
                (princ (strcat"\nEnter a number or distance, or [Enter] to start with " (rtos AddSum) ": "))
                (princ (strcat "\n= " (rtos 0 *lunits) " + "))
                (initget 32) ; null, 0, and negatives permitted
                (setq value (getdist))
                (if (/= value nil)(setq addSum value))
                )
              (progn
                (princ  "\nEnter a number or specify a distance: ")
                (setq addSum 0)
                )
            )

          (setq value 0)
          (while (/= value nil)
            (princ (strcat "\n= " (rtos AddSum *lunits) " + "))
            (initget 32)
            (setq value (getdist))
            (if value
              (progn
                (setq AddSum (+ AddSum value))
                )
              )
            );while

          (setvar 'lunits *lunits)
          (princ (strcat "\nAddSum = " (rtos AddSum *lunits) "  \[" (rtos AddSum 2 8) "]"))
          (princ)
);defun

;;=======================================================================================================================
(defun create-layer (layer-name)
  (setq layer-table (vla-get-Layers (vla-get-ActiveDocument (vlax-get-acad-object))))
  ;;(setq layer-name (getstring "Give the layer name: "))
  (setq layer (tblsearch "layer" layer-name))
  (if (not layer)
    (progn
      (setq layers (vla-get-layers (vla-get-activedocument (vlax-get-acad-object))))
      (setq layer (vla-add layers layer-name))
       (setq color (getstring t "Enter the color for layer [Red/Yellow/Green/Cyan/Blue/Magnet/White]: "))
      (if (or(equal color "r" )(equal color "R" )) (vla-put-Color layer acRed) )
      (if (or(equal color "Y" )(equal color "y" )) (vla-put-Color layer acYellow) )
      (if (or(equal color "G" )(equal color "g" )) (vla-put-Color layer acGreen) )
      (if (or(equal color "C" )(equal color "c" )) (vla-put-Color layer acCyan) )
      (if (or(equal color "B" )(equal color "b" )) (vla-put-Color layer acBlue) )
      (if (or(equal color "M" )(equal color "m" )) (vla-put-Color layer acMagenta) )
      (if (or(equal color "W" )(equal color "w" )) (vla-put-Color layer acMagenta) ))) layer)
;;=======================================================================================================================
(defun puttex (text layert)
      (if (or(setq apt "")(setq apt nil))
              (setq apt '(1.0 1.0 0.0))
              )
              (setq prevX (car apt))
                (setq prevY (cadr apt))
                (setq prevZ (caddr apt))
              (if (or (equal ht nil)(equal ht "")) (setq ht 0.2)(setq ht ht))
              ; Set the offset distance for the new text below the previous text
              (setq offset  (* -2 ht))  ; Adjust this value as needed

              ; Calculate the new Y-coordinate for the insertion point
              (setq newY (+ prevY offset))
              (setq newApt (list prevX newY prevZ))  
              (setq apt1 (getpoint "\nInsertion Point: "))
              (if (or(equal apt1 "")(equal apt1 nil)) (setq apt1 newApt)(setq apt apt1))
              (setq LayerName layert)
              (vl-load-com)
              (setq mspace (vla-get-modelspace 
                                (vla-get-activedocument 
                                      (vlax-get-acad-object))))
              ;;(setq ht (getreal "\nHeight : "))
              (setq ht1 (getreal "\nHeight  : "))
              
              (if (or(equal ht1 "")(equal ht1 nil)) (setq ht1 300)(setq ht ht1))
              ;;(if (or (equal ht "")(equal ht nil)) (setq ht 1))
              (command-s "-style" "khayyam" "@Arial unicode MS" ht 0.85 0 "N" "N")
              (setq thetext (vla-AddText mspace text 
                                            (vlax-3d-point apt) ht))
              (vla-put-layer thetext LayerName )
              ;; Get the layer color
                (setq layerColor (vla-get-Color (vla-item (vla-get-Layers (vla-get-ActiveDocument (vlax-get-acad-object))) LayerName)))

                ;; Set the text color to match the layer color
                (vla-put-Color thetext layerColor)  
)
;;=======================================================================================================================
(defun c:sbe ()
  (setq pay "Hello")
  (setq scale (getreal "scale? "))
      (setvar "cmdecho" 0)
      (setq totalLen 0)
      (setq AddSum 0)
  (setq layert (getstring "Give the Name of Layer Or default is <Area>:  "))
   (if (or (equal layert nil) (equal layert ""))
    (setq layert "Area")
     (create-layer layert)
  )
  (if (not(equal layert nil))
     (create-layer layert)
  )
      (defun getArc (en)
        (command "lengthen" en "")
        (getvar "perimeter")
      )

      (defun getLine (en)
        (setq enlist (entget en))
        (distance (cdr (assoc 10 enlist)) (cdr (assoc 11 enlist)))
      )

      (defun getPoly (en)
        (command "area" "Object" en)
        (getvar "perimeter")
      )
 (while (equal pay "Hello")
    (setq entekhab (getstring t "Do you want put dist(d) or select shapes(s) [d/s]"))
   (setq diameters '("8" "10" "12" "14" "16" "18" "20" "22" "25" "28" "30" "32"))
              (setq dia (atoi(getstring t "\nSelect diameter [8/10/12/14/16/18/20/22/25/28/30/32]: ")))
              (while (not (member  (rtos dia 2 0)  diameters))
                (setq dia (atoi(getstring t "\nInvalid input. Select diameter [8/10/12/14/16/18/20/22/25/28/30/32]: ")))
              )
   (setq all '())
      (if (or (equal entekhab "s")(equal entekhab "S"))
        (progn
        (if (setq eset (ssget))
            (progn
              
                (setq totalLen 0)
                (setq cntr 0)
                (while (< cntr (sslength eset))
                  (setq en (ssname eset cntr))
                  (setq enlist (entget en))
                  (setq enType (cdr (assoc 0 enlist)))
                  (cond
                    ((= enType "ARC") (setq len (getArc en)))
                    ((= enType "CIRCLE") (setq len (getPoly en)))
                    ((= enType "ELLIPSE") (setq len (getPoly en)))
                    ((= enType "LINE") (setq len (getLine en)))
                    ((= enType "LWPOLYLINE") (setq len (getPoly en)))
                    ((= enType "POLYLINE") (setq len (getPoly en)))
                    ((= enType "SPLINE") (setq len (getPoly en)))
                    (T (setq len 0.0))
                  )
                  (while (< (strlen enType) 12) (setq enType (strcat enType " ")))
                  
                  
                  (if (> len 12)
                    
                    (progn
                      (setq lent len)
                    (setq number 1)
                     (setq remm(- lent (- 12 (/ (* 55 dia) 1000.00))  ))
                                  (while (> remm 12 )
                                        (setq number (1+ number ))
                                        (setq remm (- lent (- (* 12 number) (* (/ (* 55 dia) 1000.00) number))))
                                  )
                                
                                  (setq lent (+ (* 12  number) remm))
                               
                    )
                    (progn
                      (setq remm 0)
                      
                      
                    )
                  
                  )
                  
               
                  (setq kham (* 12   dia) )
                  (setq kham (/ kham 1000.00))
                  
                  (setq reb (list (rtos (+ 1 cntr) 2 0) (rtos dia 2 0) (rtos kham 2 2 ) (rtos  len 2 2 )(if (> len 12) (rtos  lent 2 2 ) (rtos  0 2 2 )) (rtos remm 2 2)  (if (> len 12) (rtos  number 2 2 ) (rtos  0 2 2 )) (rtos (/ (* dia 55) 1000.00) 2 2) (rtos (+ len (* kham 2)) 2 2 )   ))
                  (setq all (cons reb all))
                  
                  
                  (princ enType)
                  (princ "\n Found ")
                  (princ " with a length of: ")
                  (princ (rtos len))
                  (setq totalLen (+ totalLen len))
                  (setq cntr (+ cntr 1))
                )
              (setq totalLen (/ totalLen scale))
              )
          )
        )
        (progn
            (if (setq eset (ssget))
            (progn
                (setq totalLen 0)
                (setq cntr 0)
                (while (< cntr (sslength eset))
                  (setq en (ssname eset cntr))
                  (setq enlist (entget en))
                  (setq enType (cdr (assoc 0 enlist)))
                  (cond
                    ((= enType "ARC") (setq len (getArc en)))
                    ((= enType "CIRCLE") (setq len (getPoly en)))
                    ((= enType "ELLIPSE") (setq len (getPoly en)))
                    ((= enType "LINE") (setq len (getLine en)))
                    ((= enType "LWPOLYLINE") (setq len (getPoly en)))
                    ((= enType "POLYLINE") (setq len (getPoly en)))
                    ((= enType "SPLINE") (setq len (getPoly en)))
                    (T (setq len 0.0))
                  )
                  (while (< (strlen enType) 12) (setq enType (strcat enType " ")))
                  
                  (princ enType)
                  (princ "\n Found ")
                  (princ " with a length of: ")
                  (princ (rtos len))
                  (setq totalLen (+ totalLen len))
                  (setq cntr (+ cntr 1))
                )
              )
          )
         (princ "put dist:")
        (EZA)
        (setq AddSum (/ AddSum scale))
        (setq totalLen (/ totalLen scale))
        (setq totalLen (+ AddSum totalLen) )
          
        )
       
                    
      )

      (setvar "cmdecho" 1)
      (setq cntr (if cntr cntr 0))
      (alert (strcat "\n Found " (itoa cntr) " entitie(s) with a Total Length of " (rtos totalLen)))
      (setq name (getstring "get the name of object: "))
      (puttex (strcat name ":" (rtos totalLen 2 2) "ml") layert)
      (princ)
   (defun lst2table ( layer-name lst / pt as cols rh cw ttl data rows sty tbl r k )
        (vl-load-com)
        (setq rh
          (vla-gettextheight
            (setq sty
              (vla-item
                (vla-item (vla-get-dictionaries (vla-get-activedocument (vlax-get-acad-object))) "acad_tablestyle")
                (getvar 'ctablestyle)
              )
            )
            acdatarow
          )
        )
        (initget (+ 1 2 4))
        (setq pt (vlax-3d-point(getpoint "\nInsertion Point: "))
              as (vla-get-block (vla-get-activelayout (vla-get-activedocument (vlax-get-acad-object))))
              cols (if (listp (caadr lst)) (length (caadr lst)) (length (car lst)))
              ttl (if (not (listp (car lst))) (car lst))
              data (if (not (listp (car lst))) (cadr lst) lst)
              data (mapcar '(lambda ( x ) (mapcar '(lambda ( y ) (if (null y) "" y)) x)) data)
              rows (if (not (listp (car lst))) (1+ (length data)) (length data))
        );setq
        (if ttl
          (vla-enablemergeall sty "Title" :vlax-true)
          (vla-enablemergeall sty "Title" :vlax-false)
        )
        (setq cw (apply 'max (mapcar '(lambda ( x ) (apply 'max (mapcar 'strlen x))) (apply 'mapcar (cons 'list data)))));setq
        (setq tbl (vla-addtable as pt rows cols (* 20 rh) (* 20 cw)));active space/ins point/# rows/# cols/row ht/col wid
        (vla-put-layer tbl layer-name)
      (setq layerColor (vla-get-Color (vla-item (vla-get-Layers (vla-get-ActiveDocument (vlax-get-acad-object))) layer-name)))
        (vla-put-Color tbl layerColor)
        (if (vlax-property-available-p tbl 'regeneratetablesuppressed t)
          (vla-put-regeneratetablesuppressed tbl :vlax-true)
        )
        (vla-put-stylename tbl (getvar 'ctablestyle))
        (vla-SetTextHeight tbl 7 2)
        (if ttl
          (progn
            (vla-settext tbl 0 0 ttl)
            (setq r 1)
          )
          (setq r 0)
        )
        (foreach i data
          (setq k -1)
          (foreach ii i
            (vla-settext tbl r (setq k (1+ k)) ii);table/row/col/text
            (cond
              ( (and ttl (> r 1))
                (vla-setcellalignment tbl r k acmiddlecenter)
              )
              ( (and (not ttl) (= r 0))
                nil
              )
              ( t
                (vla-setcellalignment tbl r k acmiddlecenter)
              )
            )
          );foreach
          (setq r (1+ r))
        );foreach
        (setq cw (mapcar '(lambda ( x ) (apply 'max (mapcar 'strlen x))) (apply 'mapcar (cons 'list data))))
        (setq k -1)
        (foreach c cw
          (vla-setcolumnwidth tbl (setq k (1+ k)) (* c rh 20))
        );foreach
        (if (vlax-property-available-p tbl 'regeneratetablesuppressed t)
          (vla-put-regeneratetablesuppressed tbl :vlax-false)
        )
        (vla-update tbl)
        (princ)
      );defun
   (setq fname "pose" )
                  (setq tname "dia" )
                  (setq trname "length kham" )
                  (setq foname " length" )
   (setq lov " length + overlaps" )
   (setq remain " remine length" )
   (setq   nnn "  number of 12m" )
   (setq   over  "Overlap length" )
   (setq finame "Total length" )
                   (setq column-names (list fname tname trname foname lov remain  nnn over finame)) 
   (setq all (cons column-names (reverse all)))
   (lst2table layert (append (list "all things") (list all)) )
  (initget "Yes No Y N y n")
(setq soal (getkword "\nDo you Want to Continue? [Yes/No]"))
(if (or (equal soal "No") (equal soal "N")(equal soal "n"))
  
 (progn (setq pay "Goodbye")
  (princ))
)
 )
)
;;===============================================================================================================
