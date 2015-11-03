;; Enable ido-mode
(ido-mode t)

;; Coding System
(prefer-coding-system 'utf-8-unix)
(when zmacs-windows-system-p
  (setq w32-unicode-filenames t)
  (setq file-name-coding-system 'gbk))

;; Enable line number globaly.
(global-linum-mode t)

(provide 'zmacs-base-edit)
;; End of lisp/base/zmacs-base-edit.el
