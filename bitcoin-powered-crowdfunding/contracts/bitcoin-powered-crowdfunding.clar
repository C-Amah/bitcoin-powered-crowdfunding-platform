 
 ;; Define the contract owner
(define-constant contract-owner tx-sender)

;; Define the contributions map
(define-map contributions
  (tuple (campaign-id uint) (backer principal))
  uint)
