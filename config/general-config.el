(use-package sublime-themes
  :config
  (load-theme 'fogus t))

(use-package powerline
  :config
  (powerline-default-theme))

(use-package expand-region
  :bind ("C-w" . er/expand-region)
  :bind ("C-S-w" . er/contract-region))

(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 1))

(use-package elfeed
  :bind ("C-c r" . elfeed)
  :config
  (require 'f)
  (require 's)
  (setq elfeed-feeds (s-split "\n" (f-read "~/.emacs.d/rss.txt") t))
  (setq-default elfeed-search-filter "@1-year-old +unread "))

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :config
  (exec-path-from-shell-initialize)
  (setq exec-path-from-shell-check-startup-files nil))

(use-package flycheck
  :config
  (global-flycheck-mode -1))

(use-package js2-mode
  :mode "\\.js\\'"
  :interpreter "node"
  :init
  (add-hook 'js2-mode-hook 'flycheck-mode)
  :config
  (setq-default indent-tabs-mode nil)
  (setq-default js2-basic-offset 2)
  (flycheck-select-checker 'javascript-standard))

(use-package elpy
  :init
  (add-hook 'python-mode-hook 'elpy-mode))

(use-package magit
  :bind ("C-c s" . magit-status))

(use-package move-text
  :bind (("M-p" . move-text-up)
         ("M-n" . move-text-down)))

(use-package multiple-cursors
  :bind(("C-S-c e" . mc/edit-lines)
        ("C-S-c n" . mc/mark-next-like-this)
        ("C-S-c p" . mc/mark-previous-like-this)
        ("C-S-c a" . mc/mark-all-like-this)))

(use-package projectile
  :config
  (require 'helm-projectile)
  (projectile-global-mode 1)
  (helm-projectile-on))

(use-package undo-tree
  :config
  (global-undo-tree-mode 1))

(use-package web-mode
  :mode "\\.html?\\'")

(use-package yaml-mode
  :mode "\\.yml$")

(use-package persistent-scratch
  :config
  (persistent-scratch-setup-default))

(use-package avy
  :bind (("M-s" . avy-goto-word-1)))

(use-package goto-chg
  :bind (("C-c b ," . goto-last-change)
         ("C-c b ." . goto-last-change-reverse)))

(use-package wrap-region
  :config
  (wrap-region-global-mode 1))

(use-package meghanada
  :init
  (add-hook 'java-mode-hook
            (lambda ()
              (meghanada-mode t)
              (add-hook 'before-save-hook 'meghanada-code-beautify-before-save))))
