 
 ;; Define the contract owner
(define-constant contract-owner tx-sender)

;; Define the contributions map
(define-map contributions
  (tuple (campaign-id uint) (backer principal))
  uint)

;; Define errors
(define-constant err-not-creator (err u100))
(define-constant err-campaign-not-found (err u101))
(define-constant err-deadline-passed (err u102))
(define-constant err-goal-not-met (err u103))
(define-constant err-already-funded (err u104))
(define-constant err-invalid-amount (err u105))
