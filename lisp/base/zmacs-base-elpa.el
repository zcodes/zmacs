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

(package-initialize)

(provide 'zmacs-base-elpa)
