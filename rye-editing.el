;; Use two-space tabs.
(kotct/set-tab-width 2)

;; Don't create lockfiles.
(setf create-lockfiles nil)

;; Don't print stuff when saving files.
(setf save-silently t)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(add-hook #'c-mode-common-hook
          (lambda () (auto-complete-mode -1)))

(add-hook #'ruby-mode-hook
          (lambda () (setf ruby-insert-encoding-magic-comment nil)))

(require 'lsp-mode)
(add-hook #'rust-mode-hook #'lsp)

(provide 'rye-editing)
