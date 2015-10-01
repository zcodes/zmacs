;; suppress gui features
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; initial frame size
(if window-system
    (progn
      (add-to-list 'default-frame-alist '(width . 120))
      (add-to-list 'default-frame-alist '(height . 30))))

(provide 'zmacs-base-ui)
;; End of zmacs-base-ui.el
