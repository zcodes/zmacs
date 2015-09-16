;; File encoding
(prefer-coding-system 'utf-8-unix)
;; File name encoding is `GBK' in windows.
(if zmacs/*is-windows*
    (setq file-name-coding-system 'gbk))

(provide 'zmacs-base-file)
