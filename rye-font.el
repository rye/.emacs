;; Use Fira Code font, size 12.0.
(kotct/font-set-name "Source Code Pro")
(kotct/font-set-height 11.0)

;; Ditto for new frames.
(add-hook 'after-make-frame-functions (lambda (frame) (kotct/font-set-name "Source Code Pro")))
(add-hook 'after-make-frame-functions (lambda (frame) (kotct/font-set-height 11.0)))

(provide 'rye-font)
