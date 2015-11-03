;; File encoding
(prefer-coding-system 'utf-8-unix)
;; File name encoding is `GBK' in windows.
(if zmacs-windows-system-p
    (setq file-name-coding-system 'gbk))

(provide 'zmacs-base-file)
;; End of lisp/base/zmacs-base-file.el
