(use-package lsp-mode
  :commands lsp
  :init)
(use-package lsp-ui
  :commands lsp-ui-mode)

(eval-after-load 'company
  (use-package company-lsp :commands company-lsp)
  (add-to-list 'company-backends 'company-lsp))


(provide 'setup-lsp)
