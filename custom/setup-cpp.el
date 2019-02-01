(defun setup-irony ()
  (use-package irony)
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  (add-hook 'irony-mode-hook 'irony-eldoc)
  (add-hook 'irony-mode-hook 'flycheck-mode)
  (use-package irony-eldoc)
  (add-hook 'irony-mode-hook #'irony-eldoc)

  (use-package company-irony)
  (add-to-list 'company-backends 'company-irony)

  (use-package flycheck-irony)
  (add-hook 'flycheck-mode-hook #'flycheck-irony-setup))


(use-package clang-format)
(add-hook 'c++-mode-hook
	  (lambda () (define-key c++-mode-map (kbd "C-c C-f") 'clang-format-buffer)))

(eval-after-load 'company
  (use-package company-c-headers)
  (add-to-list 'company-backends 'company-c-headers))

(defun cpp-lint ()
  (interactive)
  (when (and (buffer-modified-p)
	     (y-or-n-p (format "Save file %s? " (buffer-file-name))))
    (save-buffer))
  (with-output-to-temp-buffer "*linter*"
    (princ (shell-command-to-string
	     (format "cpplint --filter=-legal --output=emacs %s"
		     (buffer-file-name))))
    ;; (set-buffer-major-mode (get-buffer "*linter*"))
    (pop-to-buffer "*linter*")
    (compilation-mode)))


(provide 'setup-cpp)
