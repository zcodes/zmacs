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

;; Install package from elpa.
(defun zmacs/elpa-install (package &optional min-version)
  (unless (package-installed-p package min-version)
    (if (assoc package package-archive-contents)
	(package-install package)
      (progn
	(package-refresh-contents)
	(package-install package 'no-active)))))

(defun zmacs/elpa-package-version (package)
  (unless package--initialized (error "package.el is not yet initialized!"))
  (if (fboundp 'package-desc-version)
      (car (package-desc-version
	    (cadr (assoc package package-archive-contents))))
    (car (package-desc-vers
	  (cdr (assoc package package-archive-contents))))))

(package-initialize)

(provide 'zmacs-base-elpa)
