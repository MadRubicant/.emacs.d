(use-package elpy)
(elpy-enable)


(defun my-elpy-interactive-send-fun (&optional arg)
  (interactive)
  (elpy-shell-kill)
  (elpy-shell-send-region-or-buffer arg))

(defun my-elpy-mode-hook ()
  (define-key elpy-mode-map (kbd "C-c C-c") 'my-elpy-interactive-send-fun)
  (add-to-list 'company-backends 'elpy-company-backend)
  (setq company-tooltip-align-annotations t))

(add-hook 'elpy-mode-hook 'my-elpy-mode-hook)


(provide 'setup-py)
