(kotct/personal-packages dockerfile-mode)

;; Set our font to Source Code Pro, size 12
(set-face-attribute 'default nil :font "Source Code Pro")

;; Helper function to set the font height.
(defun rye/set-font-height (height)
  "Sets the `:height' face attribute on the `default' face to 10 times HEIGHT,
which is standard for setting the font height."
  (interactive "nNew font height: ")
  (set-face-attribute 'default nil :height (floor (* 10 height))))

(defvar rye/default-font-height
  12.0
  "The default font height.")

;; Set the font height to 12.0 using our helper function.
(rye/set-font-height rye/default-font-height)

;; Keybind for font height setting.
(global-set-key (kbd "C-x C-y") #'rye/set-font-height)

(defvar rye/font-scale-change-factor
  1.0
  "The proportion that the font height delta is multiplied by.")

(defun rye/rescale-font-height (amount)
  "Sets the `:height' face attribute on the `default' face to
`rye/font-scale-change-factor' * `amount' + the current height."
  (let ((new-size (+ (* rye/font-scale-change-factor amount) (/ (face-attribute 'default :height) 10.0))))
    (set-face-attribute 'default nil :height (floor (* 10.0 new-size)))))

(defun rye/upscale-font-height () (interactive "*") (rye/rescale-font-height +1.0))
(defun rye/downscale-font-height () (interactive "*") (rye/rescale-font-height -1.0))
(defun rye/reset-font-height () (interactive "*") (rye/set-font-height rye/default-font-height))


;; Unbind stupid text scaling keybinds.
(global-unset-key (kbd "C-x C-+"))
(global-unset-key (kbd "C-x C-="))
(global-unset-key (kbd "C-x C--"))
(global-unset-key (kbd "C-x C-0"))

(global-set-key (kbd "C-x C-+") #'rye/upscale-font-height)
(global-set-key (kbd "C-x C-=") #'rye/upscale-font-height)
(global-set-key (kbd "C-x C--") #'rye/downscale-font-height)
(global-set-key (kbd "C-x C-0") #'rye/reset-font-height)

;; Use two-space tabs.
(kotct/set-tab-width 2)

;; Always use the solarized-dark theme
(kotct/switch-to-theme 'solarized-dark)

(provide 'rye-hub)
