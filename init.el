(add-to-list 'load-path "~/.emacs.d/managers")
(load "package-manager.el")
(load "config-manager.el")

(ensure-all-my-packages-are-installed)
(ensure-primary-config-is-set)
(ensure-packages-config-are-set)
