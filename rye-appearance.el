;;; C-x C-y: interactively set font height

;; Keybind for font height setting
(global-set-key (kbd "C-x C-y") #'kotct/font-set-height)

;; Always use the solarized-dark theme.
(kotct/switch-to-theme 'solarized-dark)

(provide 'rye-appearance)
