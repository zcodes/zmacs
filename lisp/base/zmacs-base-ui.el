;; suppress gui features
(setq use-file-dialog nil)
(setq use-dialog-box nil)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 0))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode 0))

(blink-cursor-mode 0)

;; initial frame size
(if window-system
    (progn
      (add-to-list 'default-frame-alist '(width . 120))
      (add-to-list 'default-frame-alist '(height . 30))))

(provide 'zmacs-base-ui)
;; End of lisp/base/zmacs-base-ui.el
