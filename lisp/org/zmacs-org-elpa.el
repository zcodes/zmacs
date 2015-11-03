;; Install Org-Mode from elpa.
(let* ((org-package (cadr (assoc 'org package-archive-contents)))
       (org-package-version (format "%s"
				    (car (package-desc-version
					  org-package))))
       (org-package-installed-path
	(expand-file-name (concat "org-" org-package-version)
			  package-user-dir)))
  (setf (package-desc-dir org-package) org-package-installed-path)
  (zmacs/elpa-install org-package))


(provide 'zmacs-org-elpa)
