;;; C-x C-y: interactively set font height

(kotct/personal-packages dockerfile-mode gitignore-mode)

(kotct/font-set-name "Source Code Pro")
(kotct/font-set-height 12.0)

;; Keybind for font height setting.
(global-set-key (kbd "C-x C-y") #'kotct/font-set-height)

;; Use two-space tabs.
(kotct/set-tab-width 2)

;; Always use the solarized-dark theme
(kotct/switch-to-theme 'solarized-dark)

(provide 'rye-hub)
