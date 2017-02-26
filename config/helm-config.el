(use-package helm
  :bind (("C-x C-b" . helm-buffers-list)
         ("C-x C-f" . helm-find-files)
         ("M-/" . helm-dabbrev)
         ("C-c h" . helm-command-prefix)
         ("C-c h g" . helm-google-suggest)
         ("M-y" . helm-show-kill-ring)
         ("C-x b" . helm-mini)
         ("M-x" . helm-M-x)
         :map helm-map
              ("C-i" . helm-execute-persistent-action)
              ("C-z" . helm-select-action))
  :config
  (require 'helm-config)
  (setq helm-split-window-in-side-p t
        helm-google-suggest-use-curl-p t
        helm-move-to-line-cycle-in-source t
        helm-ff-search-library-in-sexp t
        helm-scroll-amount  8
        helm-ff-file-name-history-use-recentf t
        helm-buffers-fuzzy-matching t
        helm-recentf-fuzzy-match t
        helm-M-x-fuzzy-match t
        personal-helm-faces-mid-white "#F8F8F0"
        personal-helm-faces-dark-blue "#AEC2E0")

  (set-face-attribute 'helm-selection nil
                    :background personal-helm-faces-mid-white
                    :foreground personal-helm-faces-dark-blue)

  (set-face-attribute 'helm-candidate-number nil
		    :background personal-helm-faces-mid-white
		    :foreground personal-helm-faces-dark-blue)
  (helm-mode 1))
