(kotct/personal-packages dockerfile-mode)

(kotct/font-set-name "Source Code Pro")
(kotct/font-set-height 12.0)

;; Keybind for font height setting.
(global-set-key (kbd "C-x C-y") #'kotct/font-set-height)

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
