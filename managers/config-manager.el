(defun ensure-primary-config-is-set ()
  (setq inhibit-startup-message t)
  (global-set-key (kbd "C-c e") 'eval-region)
  (global-set-key (kbd "s-+") 'text-scale-increase)
  (global-set-key (kbd "s-_") 'text-scale-decrease)
  (global-linum-mode 1)
  
  ;; minimal look
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)

  ;; stop auto save and backup files
  (setq auto-save-default nil)
  (setq make-backup-files nil)

  (defalias 'yes-or-no-p 'y-or-n-p)

  (message "All primary configurations are set!"))

(defun ensure-packages-config-are-set ()
  (mapc 'load-file (file-expand-wildcards "~/.emacs.d/packages-config/*.el"))

  (message "All package configurations are set!"))
