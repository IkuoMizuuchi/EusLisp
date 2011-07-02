;;
;;
;; this file is automatically generated from euslisp+euslib version EusLisp 8.26(r482M 655:657 48161) for Linux64 created on k-okada-t410s(Tue Jun 21 11:43:49 JST 2011)
;;
;;
(defclass toyama-900-sidetable-object
  :super cascaded-link
  :slots (sensors
         ))
(defmethod toyama-900-sidetable-object
  (:init
   (&rest args &key (name "toyama-900-sidetable") (pos (float-vector 0 0 0)) (rot (unit-matrix 3)) &allow-other-keys)
   (let (c bc
         blink0
                 )
     (send-super* :init :name name args)

     ;; definition of link

     ;; definition of :bodyset117834944
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 225.0 450.0 360.0) (float-vector -225.0 450.0 360.0) (float-vector -225.0 -450.0 360.0) (float-vector 225.0 -450.0 360.0)))
         (instance face :init :vertices (list (float-vector -225.0 450.0 340.0) (float-vector 225.0 450.0 340.0) (float-vector 225.0 -450.0 340.0) (float-vector -225.0 -450.0 340.0)))
         (instance face :init :vertices (list (float-vector 225.0 450.0 360.0) (float-vector 225.0 450.0 340.0) (float-vector -225.0 450.0 340.0) (float-vector -225.0 450.0 360.0)))
         (instance face :init :vertices (list (float-vector 225.0 -450.0 360.0) (float-vector 225.0 -450.0 340.0) (float-vector 225.0 450.0 340.0) (float-vector 225.0 450.0 360.0)))
         (instance face :init :vertices (list (float-vector -225.0 -450.0 360.0) (float-vector -225.0 -450.0 340.0) (float-vector 225.0 -450.0 340.0) (float-vector 225.0 -450.0 360.0)))
         (instance face :init :vertices (list (float-vector -225.0 450.0 360.0) (float-vector -225.0 450.0 340.0) (float-vector -225.0 -450.0 340.0) (float-vector -225.0 -450.0 360.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 225.0 450.0 340.0) (float-vector -225.0 450.0 340.0) (float-vector -225.0 -450.0 340.0) (float-vector 225.0 -450.0 340.0)))
         (instance face :init :vertices (list (float-vector -225.0 450.0 -340.0) (float-vector 225.0 450.0 -340.0) (float-vector 225.0 -450.0 -340.0) (float-vector -225.0 -450.0 -340.0)))
         (instance face :init :vertices (list (float-vector 225.0 450.0 340.0) (float-vector 225.0 450.0 -340.0) (float-vector -225.0 450.0 -340.0) (float-vector -225.0 450.0 340.0)))
         (instance face :init :vertices (list (float-vector 225.0 -450.0 340.0) (float-vector 225.0 -450.0 -340.0) (float-vector 225.0 450.0 -340.0) (float-vector 225.0 450.0 340.0)))
         (instance face :init :vertices (list (float-vector -225.0 -450.0 340.0) (float-vector -225.0 -450.0 -340.0) (float-vector 225.0 -450.0 -340.0) (float-vector 225.0 -450.0 340.0)))
         (instance face :init :vertices (list (float-vector -225.0 450.0 340.0) (float-vector -225.0 450.0 -340.0) (float-vector -225.0 -450.0 -340.0) (float-vector -225.0 -450.0 340.0)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     (send (elt bc 0) :set-color :seashell)
     (send (elt bc 1) :set-color :dodgerblue3)
     (setq blink0 (instance bodyset-link :init (make-cascoords) :bodies bc :name :bodyset117834944 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of assoc
     (send self :assoc blink0)

     ;; definition of end-coords

     ;; definition of joint


     ;; init-ending 
     (setq links (list blink0))
     (setq joint-list (list))
     (send self :init-ending)
     (send self :move-to (make-coords :pos pos :rot rot))
     (send-all links :worldcoords)

     self))
  (:cameras (&rest args)
   (forward-message-to-all (list) args))

  (:handle () (list ))
  (:attention () (list ))
  (:button () (list ))
  )

(defun toyama-900-sidetable (&rest args) (instance* toyama-900-sidetable-object :init args))
;; (format *error-output* "(instance toyama-900-sidetable-object :init) for generating model~%")