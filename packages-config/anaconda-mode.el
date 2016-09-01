(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(eval-after-load "company"
 '(add-to-list 'company-backends 'company-anaconda))
