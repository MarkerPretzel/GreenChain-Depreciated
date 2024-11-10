(define-data-var total-funds-raised uint u0) ;; Total funds raised
(define-data-var target-funds uint u1000) ;; Target funds to activate the power plant
(define-data-var target-funds-reached bool false) ;; Target funds to activate the power plant



;; (define-data-var total-funds uint 0) ;; Total funds raised
;; (define-data-var target-funds uint 1000) ;; Target funds to activate the power plant
;; (define-data-var is-operational bool false) ;; Flag to indicate if the plant is operational
;; (define-data-var contributors (map principal uint)) ;; Track investments by each contributor

;; (define-public (contribute)
;;   (begin
;;     (let ((sender (get-caller)))
;;       (if (>= (get-balance sender) (as-uint 0))
;;           (begin
;;             (let ((current-contribution (get-map-value contributors sender (as-uint 0)))) ;; Get the current contribution of the sender
;;               (let ((new-contribution (+ current-contribution (get-balance sender)))) ;; Add the new contribution to the existing one
;;                 (set-map-value contributors sender new-contribution) ;; Update the map with the new contribution
;;                 (set-data-var total-funds (+ (get-data-var total-funds) (get-balance sender)))))))) ;; Update the total funds raised
;;   )
;; )

;; (define-public (activate-plant)
;;   (if (>= (get-data-var total-funds) (get-data-var target-funds))
;;       (set-data-var is-operational true) ;; Activate the plant if the target funds have been met
;;       (err "Not enough funds")) ;; Error if target funds haven't been met
;; )

;; (define-public (distribute-profits)
;;   (if (is-operational)
;;       (begin
;;         (let ((total-profits 100)) ;; Example profit value
;;           (map-iter (contributors)
;;             (let ((contribution (get-map-value contributors principal (as-uint 0)))) ;; Get each contributor's investment
;;               (let ((share (/ contribution (get-data-var total-funds)))) ;; Calculate share of total funds
;;                 (let ((profit (* share total-profits))) ;; Calculate the profit share for each contributor
;;                   (transfer-to principal profit))))))
;;       (err "Plant not operational")) ;; Error if the plant isn't operational
;;     )
;; )