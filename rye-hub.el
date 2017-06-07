;;; C-x C-y: interactively set font height

(kotct/personal-packages dockerfile-mode gitignore-mode)

;; Use Source Code Pro font, size 12.0.
(kotct/font-set-name "Source Code Pro")
(kotct/font-set-height 12.0)

;; Ditto for new frames.
(add-hook 'after-make-frame-functions (lambda (frame) (kotct/font-set-name "Source Code Pro")))
(add-hook 'after-make-frame-functions (lambda (frame) (kotct/font-set-height 12.0)))

;; Keybind for font height setting.
(global-set-key (kbd "C-x C-y") #'kotct/font-set-height)

;; Use two-space tabs.
(kotct/set-tab-width 2)

;; Always use the solarized-dark theme
(kotct/switch-to-theme 'solarized-dark)

;; Don't create lockfiles
(setf create-lockfiles nil)

;; Don't print stuff when saving files
(setf save-silently t)

(provide 'rye-hub)
