(require 'helm-config)
(require 'helm)

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p t
      helm-move-to-line-cycle-in-source t
      helm-ff-search-library-in-sexp t
      helm-scroll-amount  8
      helm-ff-file-name-history-use-recentf t
      helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t
      helm-M-x-fuzzy-match t)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z")  'helm-select-action)

(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-s o") 'helm-occur)
(global-set-key (kbd "M-/") 'helm-dabbrev)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "C-c h g") 'helm-google-suggest)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-x") 'helm-M-x)

(global-unset-key (kbd "C-x c"))

(setq personal-helm-faces-mid-white "#F8F8F0"
      personal-helm-faces-dark-blue "#AEC2E0")

(set-face-attribute 'helm-selection nil
                    :background personal-helm-faces-mid-white
                    :foreground personal-helm-faces-dark-blue)

(set-face-attribute 'helm-candidate-number nil
		    :background personal-helm-faces-mid-white
		    :foreground personal-helm-faces-dark-blue)

(helm-mode 1)
