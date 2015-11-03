;; Install Org-Mode from elpa.

(if (fboundp 'package-desc-p)
  (let* ((org-package (cadr (assoc 'org package-archive-contents)))
         (org-package-version (format "%s" (zmacs/elpa-package-version 'org)))
         (org-package-installed-path
           (expand-file-name (concat "org-" org-package-version)
                             package-user-dir)))
    (setf (package-desc-dir org-package) org-package-installed-path)
    (zmacs/elpa-install org-package))
  (zmacs/elpa-install 'org (list (zmacs/elpa-package-version 'org))))

(provide 'zmacs-org-elpa)
