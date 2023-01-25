;;
;; DO NOT REMOVE THESE TWO LINES
;;
#lang racket
(provide (all-defined-out))

;;
;; Problem 1
;;

(define (stream-pair-with f s)
  (if (stream-empty? s)
      empty-stream
      
  (stream-cons (cons (stream-first s) (f (stream-first s)))
    (stream-pair-with f (stream-rest s)))))

  (define (stream-iterate f x)

  (stream-cons x (stream-iterate f (f x))))


;;
;; Problem 3
;;

(define (stream-zip xs ys)

  (cond
    
    [(stream-empty? xs)empty-stream]
    [(stream-empty? ys)empty-stream]
    
    [else (stream-cons (cons (stream-first xs) (stream-first ys)) (stream-zip (stream-rest xs) (stream-rest ys)))]))

;;
;; Problem 4
;;

(define (cycle-streams xs ys)
  'not-implemented)

;;
;; Problem 5
;;

(define apply-count
  'not-implemented)
