;;; C-x C-y: interactively set font height

(kotct/personal-packages dockerfile-mode
                         gitignore-mode)

(require 'rye-fira)

;; Keybind for font height setting
(global-set-key (kbd "C-x C-y") #'kotct/font-set-height)

;; Use two-space tabs.
(kotct/set-tab-width 2)

;; Always use the solarized-dark theme.
(kotct/switch-to-theme 'solarized-dark)

;; Don't create lockfiles.
(setf create-lockfiles nil)

;; Don't print stuff when saving files.
(setf save-silently t)

;; Enable dev-mode.
(setf kotct/dev-mode t)

(defun rye-hub-unload-function ()
  (unload-feature 'rye-fira 'force))

(provide 'rye-hub)
