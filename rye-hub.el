(kotct/personal-packages dockerfile-mode)

;; Set our font to Source Code Pro, size 12
(set-face-attribute 'default nil :font "Source Code Pro")

;; Helper function to set the font height.
(defun rye/set-font-height (height)
  "Sets the `:height' face attribute on the `default' face to 10 times HEIGHT,
which is standard for setting the font height."
  (interactive "nNew font height: ")
  (set-face-attribute 'default nil :height (floor (* 10 height))))

;; Set the font height to 12.0 using our helper function.
(rye/set-font-height 12.0)

;; Keybind for font height setting.
(global-set-key (kbd "C-x C-y") #'rye/set-font-height)

;; Use two-space tabs.
(kotct/set-tab-width 2)

;; Always use the solarized-dark theme
(kotct/switch-to-theme 'solarized-dark)

(provide 'rye-hub)
