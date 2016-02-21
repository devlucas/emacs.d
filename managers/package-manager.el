(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(setq my-packages
      '(sublime-themes
	powerline
	undo-tree
	move-text
	multiple-cursors
	expand-region
	elpy
	helm
	magit
	elfeed))

(defun ensure-all-my-packages-are-installed ()
  (message "Checking for not installed packages...")
  
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (message p " will be installed...")
      (package-install p)
      (message p " was sucessful installed!")))

  (message "All your packages are installed!"))
