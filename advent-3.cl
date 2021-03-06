(defun getRing (x)
	(if (eq (mod (sqrt x) 1) 0)
		(sqrt x)
		(floor (+ (sqrt x) 1))
	)
)
(defun pivots (ring)
	(pivotsRec ring 0 '())
)

(defun pivotsRec (ring x pivots)
	(if (eq 4 x)
		pivots
		(pivotsRec ring (+ x 1) (append pivots (list (- (* ring ring) (* x (- ring 1))))))
	)
)

(defun pivotsDistances (n ring)
	(map 'list
		(lambda (x) (abs (- n x)))
		(pivots ring)
	)
)
;(print (pivots (getRing 312051)))
(let ((rng (getRing 312051)))
(print (- rng 1 (find-if (lambda (x) (<= x (floor (- rng 1) 2)))(pivotsDistances 312051 rng))))
)