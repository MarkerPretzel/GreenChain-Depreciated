(define-fungible-token green-energy-token)

;; Function to mint tokens (only the contract deployer can call this)
(define-public (mint-tokens (amount uint))
  (begin
    (asserts! (is-eq tx-sender (contract-owner)) (err "Only owner can mint"))
    (ok (ft-mint? green-energy-token amount tx-sender))))

;; Function to transfer tokens
(define-public (transfer (recipient principal) (amount uint))
  (ok (ft-transfer? green-energy-token amount tx-sender recipient)))
