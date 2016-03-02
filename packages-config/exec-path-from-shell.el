(require 'exec-path-from-shell)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (setq exec-path-from-shell-check-startup-files nil))
