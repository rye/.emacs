(add-hook 'git-commit-mode-hook
          (lambda ()
            (setf indent-tabs-mode t)))

(provide 'rye-magit)
