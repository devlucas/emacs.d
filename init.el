(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; checks whether emacs version is supported
(if (version< emacs-version "25")
    (error "This config requires emacs 25 at least, please update and try again.")
  (message "Your favorite editor will be ready in a minute, hold on!"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-highlight-level 3)
 '(js2-mode-show-parse-errors nil)
 '(js2-mode-show-strict-warnings nil)
 '(package-selected-packages
   (quote
    (wrap-region goto-chg avy persistent-scratch f s use-package web-mode sass-mode markdown-mode elpy feature-mode js2-mode rvm robe racer yaml-mode exec-path-from-shell elfeed magit editorconfig flycheck-rust flycheck company-anaconda company-racer company helm-robe helm-projectile projectile helm expand-region multiple-cursors move-text undo-tree powerline sublime-themes)))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(when (not package-archive-contents)
  (package-refresh-contents))

(package-install-selected-packages)
(server-start) ;; starts a server so that emacsclient can connect to it

;; sets some useful global key bindings
(global-set-key (kbd "C-c e") 'eval-region)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "s-+") 'text-scale-increase)
(global-set-key (kbd "s-_") 'text-scale-decrease)

(setq echo-keystrokes 0.1) ;; shows keystrokes early
(setq inhibit-startup-message t) ;; disables default startup message
(setq initial-major-mode 'org-mode) ;; sets scratch to org-mode by default
(setq save-interprogram-paste-before-kill t) ;; adds system's clipboard to the kill-ring
(setq scroll-margin 3) ;; always keeps 3 lines of bellow and above the cursor in order to contextualize it

;; stop auto save and backup files
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)

;; give a better code editing experience
(show-paren-mode 1)
(global-linum-mode 1)
(global-hl-line-mode 1)
(delete-selection-mode t)

;; removes ugly GUI stuff
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(defalias 'yes-or-no-p 'y-or-n-p) ;; replaces "yes or no" by "y or n"

(setq-default indent-tabs-mode nil) ;; disables tab indentation by default
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; remove unneeded whitespaces when saving a buffer

(mapc 'load-file (file-expand-wildcards "~/.emacs.d/config/*.el")) ;; loads all config files
