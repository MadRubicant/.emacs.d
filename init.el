
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(electric-pair-mode t)
(global-linum-mode t)
(setq ring-bell-function 'ignore
      load-prefer-newer t)
(global-auto-revert-mode t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'manage-packages)

(use-package yasnippet)
(define-key key-translation-map (kbd "C-c y") (kbd "C-c &"))
(use-package yasnippet-snippets)


(require 'setup-lsp)
(require 'setup-company)
(require 'setup-rust)
(require 'setup-cpp)
(require 'setup-py)
(require 'setup-helm)

(use-package helm-gtags)

(use-package slime)
(setq inferior-lisp-program "sbcl")
(setq slime-contribs '(slime-fancy slime-company))

(use-package geiser)
(add-hook 'geiser-mode-hook
	  (lambda ()
	    (define-key geiser-mode-map "\C-c \C-c" 'geiser-eval-definition)))

(use-package latex-preview-pane)
(latex-preview-pane-enable)
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(use-package pdf-tools)





;; C++ tools ;;
;;(require 'google-c-style)
;;(add-hook 'c-mode-hook 'google-set-c-style)
;;(add-hook 'c++-mode-hook 'google-set-c-style)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-quickhelp-use-propertized-text t)
 '(custom-enabled-themes (quote (wombat)))
 '(elpy-company-add-completion-from-shell t)
 '(elpy-modules
   (quote
    (elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(elpy-shell-echo-input nil)
 '(inhibit-startup-screen t)
 '(lsp-eldoc-render-all nil)
 '(lsp-prefer-flymake nil)
 '(package-selected-packages
   (quote
    (py-autopep8 lsp-ui lsp-flycheck company-lsp lsp-rust lsp-mode helm-config clang-format yasnippet-snippets company-c-headers company-semantic company-clang flycheck-irony company-irony irony-eldoc irony company-jedi company-quickhelp racer racer-mode emacs-racer racer-emacs rust-mode auto-package-update helm-gtags elpy pdf-tools latex-preview-pane auctex geiser quack slime-company helm company use-package)))
 '(python-shell-interpreter-args "-i -B")
 '(racer-rust-src-path "/home/william/rust/rustc/src")
 '(reb-re-syntax (quote string))
 '(safe-local-variable-values (quote ((elpy-shell-use-project-root)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(quack-pltish-defn-face ((t (:foreground "light sky blue" :weight bold))))
 '(quack-pltish-paren-face ((t (:foreground "brightred"))))
 '(tooltip ((t (:inherit default :background "black" :foreground "white")))))
