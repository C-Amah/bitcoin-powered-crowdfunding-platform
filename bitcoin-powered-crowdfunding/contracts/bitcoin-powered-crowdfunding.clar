 
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
(define-constant err-campaign-canceled (err u106))
(define-constant err-milestone-not-achieved (err u107))
(define-constant err-already-voted (err u108))

;; Define a map to store campaigns
(define-map campaigns { campaign-id: uint }
    {
        creator: principal,
        goal: uint,
        raised: uint,
        deadline: uint,
        funded: bool
    }
)

;; Define the milestone votes map
(define-map milestone-votes
  (tuple (campaign-id uint) (milestone-id uint) (voter principal))
  bool)

