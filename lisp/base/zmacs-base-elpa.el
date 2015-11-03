;; Load package.el
(require 'package)

;; Package Repos
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)

(setq package-enable-at-startup nil)
(setq package-check-signature
      (when (executable-find "gpg") 'allow-unsigned))

(defun zmacs-elpa-install (package &optional min-version)
  "Install package from elpa."
  (unless (package-installed-p package min-version)
    (if (assoc package package-archive-contents)
	(package-install package t)
      (progn
	(package-refresh-contents)
	(package-install package t)))))

(defun zmacs-elpa-package-version (package)
  "Get the version number list of the package in elpa."
  (unless package--initialized (error "package.el is not yet initialized!"))
  (if (fboundp 'package-desc-version)
      (package-desc-version
       (cadr (assoc package package-archive-contents)))
    (package-desc-vers
     (cdr (assoc package package-archive-contents)))))

(defun zmacs-elpa-package-desc (package)
  (let ((the-package-desc (assoc package package-archive-contents)))
    (if (listp the-package-desc)
	(car the-package-desc)
      the-package-desc)))

(package-initialize)

(provide 'zmacs-base-elpa)
;; End of lisp/base/zmacs-base-elpa.el
