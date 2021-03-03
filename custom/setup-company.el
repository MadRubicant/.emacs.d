(use-package company
  :init)

(global-company-mode t)

;; Effectively instant completion
(setq company-idle-delay .25)
(setq company-minimum-prefix-length 1)

;; Up/down nav while completion menu active
(define-key company-active-map "\C-n" 'company-select-next)
(define-key company-active-map "\C-p" 'company-select-previous)

(provide 'setup-company)
