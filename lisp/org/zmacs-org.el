(require 'zmacs-org-elpa)

;; Associate org files with org-mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Org mode key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(provide 'zmacs-org)
;; End of file lisp/org/zmacs-org.el
