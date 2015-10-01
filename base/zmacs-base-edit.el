;; Enable ido-mode
(ido-mode t)

;; Coding System
(prefer-coding-system 'utf-8-unix)
(if (eq system-type 'windows-nt)
    (progn
      (setq w32-unicode-filenames t)
      (setq file-name-coding-system 'gbk)))

(provide 'zmacs-base-edit)
;; End of zmacs-base-edit.el
