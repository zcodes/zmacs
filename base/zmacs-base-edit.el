;; Enable ido-mode
(ido-mode t)

;; Coding System
(prefer-coding-system 'utf-8-unix)
(if (eq system-type 'windows-nt)
    (progn
      (setq w32-unicode-filenames t)
      (setq file-name-coding-system 'gbk)))

;; Enable line number globaly.
(global-linum-mode t)

(provide 'zmacs-base-edit)
;; End of zmacs-base-edit.el
