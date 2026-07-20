;;; -*- lexical-binding: t; -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3061706fa92759264751c64950df09b285e3a2d3a9db771e99bcbb2f9b470037"
     "5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874"
     default))
 '(package-selected-packages
   '(company doom-themes exec-path-from-shell magit orderless parrot
	     vertico xah-fly-keys)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;; Global Editor
(use-package emacs
  :init
  (tool-bar-mode 0)
  (menu-bar-mode 0)
  (scroll-bar-mode 0)
  (setq make-backup-files nil)
  (setq inhibit-splash-screen t))

(use-package ansi-color
  :hook (compilation-filter . ansi-color-compilation-filter))

(use-package package
  :config
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))

(use-package parrot
  :ensure t
  :init
  (setq parrot-num-rotations nil)
  :config
  (parrot-mode)
  (parrot-start-animation))

(use-package magit
  :ensure t)

(use-package xah-fly-keys
  :ensure t
  :init
  (setq xah-fly-use-control-key nil
	xah-fly-use-meta-key nil)
  :config
  (xah-fly-keys t)
  (define-key xah-fly-command-map (kbd "SPC / m") 'magit-status)
  (define-key xah-fly-command-map (kbd "SPC w f") 'project-find-file)
  (define-key xah-fly-command-map (kbd "C") #'(lambda () ('save-buffer) ('recompile)))
  (define-key xah-fly-command-map (kbd "C") (lambda () (interactive) (save-buffer) (recompile))))

(use-package vertico
  :ensure t
  :init
  (vertico-mode))

(use-package savehist
  :init
  (savehist-mode))

(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless basic)
	completion-category-defaults nil
	completion-category-overrides '((file (styles partial-completion)))))

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-palenight))

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;;; Programming Languages
;; (use-package zig-mode
;;  :ensure t)

;; Java
;; (use-package mvn
;;  :ensure t)

