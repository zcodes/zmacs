;;; init.el --- zmacs' configuration entry point.
;;
;; Copyright (c) 2015 zcodes
;;
;; Author: zcodes <zcodes@163.com>
;; URL: http://zcodes.net
;; Version: 0.0.1
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This file simply sets up the default load path and requires
;; the various modules defined within Emacs Prelude.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:
;; Basic variables

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar zmacs/version "0.0.1")
(defvar zmacs/base-directory
  (concat (expand-file-name user-emacs-directory) "lisp"))
(defvar zmacs/*is-windows*
  (equal system-type 'windows-nt))

;; Loading paths
(dolist (path (list "base" "org"))
  (add-to-list 'load-path
	       (expand-file-name path zmacs/base-directory)))

;; Load files
(require 'zmacs-base-init)
(require 'zmacs-base-elpa)
(require 'zmacs-base-file)
(require 'zmacs-base-ui)
(require 'zmacs-base-edit)

(require 'zmacs-org)

(if (file-exists-p "~/.emacs.d/local.el")
    (load-file "~/.emacs.d/local.el"))

;; End of init.el
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote ("org" "org" org-20151005))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
