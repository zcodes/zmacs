;; Install Org-Mode from elpa.

(defvar zmacs-org-package
  (zmacs-elpa-package-desc 'org)
  "`org-mode' package-desc in elap.")

(when (fboundp 'package-desc-p)
  (unless (package-installed-p 'org
			       (zmacs-elpa-package-version 'org))
    (zmacs-elpa-install zmacs-org-package)))

(unless (fboundp 'package-desc-p)
  (zmacs-elpa-install 'org (zmacs-elpa-package-version 'org)))

(provide 'zmacs-org-elpa)
;; End of file lisp/org/zmacs-org-elpa.el
