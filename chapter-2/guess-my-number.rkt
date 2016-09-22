#lang racket

(define lower 1)
(define upper 100)

;; guess
(define (guess)
  (quotient (+ lower upper) 2))

;; smaller
(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

;; bigger
(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))

(define (start a b)
  (set! lower (min a b))
  (set! upper (max a b))
  (guess))