;; Disable variable pitch and org-mode headline scaling
(setf solarized-use-variable-pitch nil
      solarized-scale-org-headlines nil)

;; Re-load the theme
(kotct/switch-to-theme kotct/current-theme 'force-load)

(provide 'rye-org)
