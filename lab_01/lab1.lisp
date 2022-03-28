(defun sine (x)
    (let ((abs_x (abs x)))
        (* (if (< abs_x 0.001)
               x
               (- (* 3.0 (sine (/ abs_x 3.0)))
                  (* 4.0 (expt (sine (/ abs_x 3.0)) 3)))) (signum x))))
