(message "Loading @rye's hub...")

;; If we are on a Darwin (i.e. Mac) operating system,
;; assume that we have a funky keyboard and make Option
;; map to super and Command map to meta.
(if (eq system-type 'darwin)
    (progn
      (setf mac-command-modifier 'meta)
      (setf mac-option-modifier 'super)))

(provide 'rye-hub)
