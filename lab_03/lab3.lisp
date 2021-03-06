(defun matrix-tl-bl (n)
  (let  ((matrix (make-array (list n n)))
        (cnt (ceiling n 2))
        (num 1))

  (dotimes (i cnt)

    (loop for j from 0 upto (1- n)
      do (setf (aref matrix j (* i 2)) num)
         (setf num (1+ num))
    )

    (when (or (evenp n) (< i (1- cnt)))
      (loop for j from (1- n) downto 0
        do (setf (aref matrix j (1+ (* i 2))) num)
           (setf num (1+ num))
      )
    )
  )

    matrix)
)
