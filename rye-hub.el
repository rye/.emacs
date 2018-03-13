(kotct/personal-packages dockerfile-mode
                         gitignore-mode
                         pandoc-mode)

(require 'rye-dev)
(require 'rye-appearance)
(require 'rye-magit)
(require 'rye-editing)
(require 'rye-fira)
(require 'rye-js-customizations)
(require 'rye-org)
(require 'rye-keys)

(defun rye-hub-unload-function ()
  (unload-feature 'rye-keys 'force)
  (unload-feature 'rye-org 'force)
  (unload-feature 'rye-js-customizations 'force)
  (unload-feature 'rye-fira 'force)
  (unload-feature 'rye-editing 'force)
  (unload-feature 'rye-magit 'force)
  (unload-feature 'rye-appearance 'force)
  (unload-feature 'rye-dev 'force))

(provide 'rye-hub)
