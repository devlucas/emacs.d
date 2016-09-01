;;; ruby -- sets ruby environment;

;;; Commentary:

;;; Code:

(add-hook 'ruby-mode-hook 'robe-mode)

(eval-after-load 'company
  '(push 'company-robe company-backends))

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(provide 'ruby-env)
;;; ruby-env.el ends here
