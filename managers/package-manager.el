(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(setq my-packages
      '(sublime-themes
	powerline
	undo-tree
	move-text
	multiple-cursors
	expand-region
	helm
	projectile
	helm-projectile
	helm-robe
	company
	company-racer
        company-anaconda
	flycheck
	flycheck-rust
        editorconfig
	magit
	elfeed
	exec-path-from-shell
	anaconda-mode
	yaml-mode
	racer
	rust-mode
	robe
	rvm
	js2-mode
	feature-mode
        elpy
        markdown-mode
        sass-mode
        web-mode
	))

(defun ensure-all-my-packages-are-installed ()
  (message "Checking for not installed packages...")

  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (message "installing " p)
      (package-install p)
      (message "installed " p)))

  (message "All your packages are installed!"))
