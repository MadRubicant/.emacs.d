(eval-after-load 'lsp
  (add-hook 'rust-mode-hook 'lsp)
  (add-hook 'rust-mode-hook 'yas-minor-mode)

  (defun my-rust-compile ()
    (interactive)
    (let ((dir (lsp-workspace-root)))
      (compile "cargo build")
      (with-current-buffer "*compilation*"
	(cd dir))))

  (add-hook 'rust-mode-hook (lambda () (setq-local compile 'my-rust-compile))))


(provide 'setup-rust)
