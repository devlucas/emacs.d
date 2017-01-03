(server-start)

(add-to-list 'load-path "~/.emacs.d/managers")
(load "package-manager.el")
(load "config-manager.el")

(ensure-all-my-packages-are-installed)
(ensure-primary-config-is-set)
(ensure-packages-config-are-set)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-highlight-level 3)
 '(js2-mode-show-parse-errors nil)
 '(js2-mode-show-strict-warnings nil)
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
