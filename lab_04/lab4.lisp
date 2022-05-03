(defun word-list (string)
    (loop with len = (length string)
        for left = 0 then (1+ right)
        for right = (or (position-if #'whitespace-char-p string 
									 :start left)
						len)
        unless (= right left)
          collect (subseq string left right)
        while (< right len)))


(defun max-digital-word-length (text)
    (let ((maxlen 0)
          (pos -1)
          (str ""))
            (dolist (sentense text)
                (let ((list-words (word-list sentense)))
                     (loop for i from 0 to (- (length list-words) 1)
                           do (if (every #'digit-char-p (nth i list-words)) 
                                  (if (>= (length (nth i list-words)) maxlen) 
									(setq maxlen (length (nth i list-words))
										  pos i
										  str (nth i list-words))))))
                (if (/= pos -1) (values maxlen str)))))
