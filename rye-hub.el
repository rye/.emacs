(kotct/personal-packages dockerfile-mode)

(defun rye/system--get-term-program ()
  (getenv "TERM_PROGRAM"))

(defun rye/system--get-path ()
  (getenv "PATH"))

(defun rye/darwin-supplement ()
  "Resets certain variables for Darwin (i.e. macOS) platforms."
  (interactive "*")
  (progn
    ;; Map Option to Super and Command to Meta.
    ;;
    ;; This will make it easier for users coming from Linux systems to
    ;; use the keyboard layout, and makes everything a bit more
    ;; ergonomic.
    (setf mac-command-modifier 'meta)
    (setf mac-option-modifier 'super)

    ;; If TERM_PROGRAM is not set, (i.e. during the load sequence) run
    ;; the terminal to evaluate ~/.profile, ~/.zshrc, ~/.bashrc,
    ;; etc. to build out the PATH variable.
    ;;
    ;; Then set `exec-path' to the split version of this PATH variable.
    (if (not (rye/system--get-term-program))
        (let ((path (shell-command-to-string
                     "$SHELL -cl \"printf %s \\\"\\\$PATH\\\"\"")))
          (setenv "PATH" path)
          (setf exec-path (split-string (rye/system--get-path) ":"))))))

;; Run `rye/darwin-supplement' if we are on Darwin systems.
(if (eq system-type 'darwin)
    (rye/darwin-supplement))

;; Set our font to Source Code Pro, size 12
(set-face-attribute 'default nil :font "Source Code Pro-12")

;; Use two-space tabs.
(setf global-tab-width 2)
(setq-default tab-width global-tab-width)
(setf smie-indent-basic global-tab-width)
(setq-default ruby-indent-level global-tab-width)

;; Always use the solarized-dark theme
(kotct/switch-to-theme 'solarized-dark)

(provide 'rye-hub)
