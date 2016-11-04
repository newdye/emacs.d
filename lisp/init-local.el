(add-to-list 'exec-path "C:/Program Files/git/bin")
(add-to-list 'exec-path "D:/32.emacs/tools/GnuGlobal/bin/")
(add-to-list 'Info-additional-directory-list "D:/32.emacs/tools/GnuGlobal/share/info")
(setq tramp-default-method "plink")
(setq password-cache-expiry "3600000")
;; ;; init.el comment init-ido.el & init-ivy.el disable ido-mode, if want to use
;; ;; ido-mode, uncomment init-ido.el. It set var ido-ubiquitous-mode t.
;; ;; (setq ido-enable-flex-matching t)
;; ;; (setq ido-use-filename-at-point 'guess)
;; ;; (setq ido-everywhere t)
;; ;; (ido-mode t)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))
(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http" . "proxy.zte.com.cn:80")
        ("https" . "proxy.zte.com.cn:80")))
(provide 'init-local)
