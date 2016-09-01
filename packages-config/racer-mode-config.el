;;; racer-mode-config --- Basic configuration for racer-mode

;;; Commentary:

;;; Code:

(setq racer-cmd "~/.cargo/bin/racer")

(setq racer-rust-src-path "~/.rust/src/")

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(provide 'racer-mode-config)

;;; racer-mode-config.el ends here
