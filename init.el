(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(consult-org-roam-mode t)
 '(custom-enabled-themes '(timu-rouge))
 '(custom-safe-themes
   '("622034e2b06b087d3e950652c93e465f3df6eab50bfdceddaa78077487e9bc24" default))
 '(display-line-numbers t)
 '(emms-info-functions '(emms-info-native))
 '(emms-player-list '(emms-player-mpv))
 '(emms-playlist-update-track-function 'emms-playlist-mode-update-track-function)
 '(inhibit-startup-screen t)
 '(ivy-mode t)
 '(org-roam-db-autosync-mode t)
 '(package-selected-packages
   '(company rustic rust-mode quelpa-use-package flycheck xah-fly-keys lsp-mode corfu timu-rouge-theme meow emms consult-org-roam org-roam orderless consult marginalia vertico dirvish lua-mode avy exec-path-from-shell yaml-mode pyvenv async magit markdown-mode))
 '(python-shell-completion-native-enable nil)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 )

 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Custom paths
(add-to-list 'load-path "~/.emacs.d/custom")

;; Vertico
(require 'setup-vertico)

;; Consult & Org Roam
(require 'setup-roam)

;; Meow
;; (require 'setup-meow)

;; Xah
(require 'setup-xah)
(require 'setup-xah-binds)

;; Devil
;; (require 'setup-devil)

;; God
;; (require 'setup-god)

;; Corfu
;; (require 'setup-corfu)

;; Emms
(emms-all)

;; Rust
;; (require 'setup-rustic)

;; Shell Env
(exec-path-from-shell-initialize)
