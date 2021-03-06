(when (eq system-type 'windows-nt)
  (progn
    (add-to-list 'exec-path "C:/Program Files/git/bin")
    (add-to-list 'exec-path "D:/32.emacs/tools/GnuGlobal/bin/")
    (add-to-list 'Info-additional-directory-list "D:/32.emacs/tools/GnuGlobal/share/info")
    (add-to-list 'Info-additional-directory-list "D:/32.emacs/HOME/.emacs.d/elpa/sicp-20151130.757")
    (setq tramp-default-method "plink")
    (setq password-cache-expiry "3600000")
    )
  )
(add-to-list 'load-path "~/emacs-c-ide-demo")

;; ;; init.el comment init-ido.el & init-ivy.el disable ido-mode, if want to use
;; ;; ido-mode, uncomment init-ido.el. It set var ido-ubiquitous-mode t.
;; ;; (setq ido-enable-flex-matching t)
;; ;; (setq ido-use-filename-at-point 'guess)
;; ;; (setq ido-everywhere t)
;; ;; (ido-mode t)
;; configure in c ide demo
;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
;;               (ggtags-mode 1))))
(defun set-zte-proxy ()
  "Set http proxy in office."
  (interactive)
  (setq url-proxy-services
        '(("no_proxy" . "^\\(localhost\\|10.*\\)")
          ("http" . "proxy.zte.com.cn:80")
          ("https" . "proxy.zte.com.cn:80")))
  )
(require-package 'ggtags)
(require 'init-c-ide)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(add-to-list 'company-backends 'company-gtags)
(add-to-list 'company-backends 'company-c-headers)
(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'c-mode-common-hook 'linum-mode)
(add-hook 'c-mode-hook (lambda () (highlight-lines-matching-regexp ".\\{81\\}" 'hi-pink)))

(setq org-plantuml-jar-path (expand-file-name "~/emacs.d/plantuml.jar"))
(provide 'init-local)
;;; init-local.el ends here
