
(defun rot (str r)
  (let ((message str) (c))
    (format t "~A~C" message #\return) (sleep 0.2)

    (loop for x from 0 below (length message) do
          (setq c (char-code (char message x)))
	  
          (cond ((and (char>= (char message x) #\a) (char<= (char message x) #\z))
                 (cond ((char< (char message x) #\n)
                        (replace message (string (code-char (+ c r))) :start1 x))
                       (t (replace message (string (code-char (- c r))) :start1 x)))))

          (cond ( (and (char>= (char message x) #\A) (char<= (char message x) #\Z))
                 (cond ((char< (char message x) #\N)
                        (replace message (string (code-char (+ c r))) :start1 x))
                       (t (replace message (string (code-char (- c r))) :start1 x)))))
          (sleep 0.05) (format t "~A~C" message #\return)) ))
