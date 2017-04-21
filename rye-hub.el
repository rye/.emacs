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


;;; scroll one line at a time (less "jumpy" than defaults)
(setf mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setf mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setf mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setf scroll-step 1) ;; keyboard scroll one line at a time

(provide 'rye-hub)
