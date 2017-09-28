;;; C-x C-y: interactively set font height

(kotct/personal-packages dockerfile-mode
                         gitignore-mode)

(require 'rye-appearance)
(require 'rye-editing)
(require 'rye-dev)
(require 'rye-fira)
(require 'rye-js-customizations)

(defun rye-hub-unload-function ()
  (unload-feature 'rye-fira 'force)
  (unload-feature 'rye-dev 'force)
  (unload-feature 'rye-editing 'force)
  (unload-feature 'rye-appearance 'force)
  (unload-feature 'rye-js-customizations 'force))

(provide 'rye-hub)
