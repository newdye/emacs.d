(add-to-list 'exec-path "C:/Program Files/git/bin")
(add-to-list 'exec-path "D:/32.emacs/tools/GnuGlobal/bin/")
(add-to-list 'Info-additional-directory-list "D:/32.emacs/tools/GnuGlobal/share/info")
(setq tramp-default-method "plink")
(setq password-cache-expiry "3600000")
(ido-mode t)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(provide 'init-local)
