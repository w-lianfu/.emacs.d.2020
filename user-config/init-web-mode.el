;; --- init-web-mode ---
(require 'web-mode)
(require 'emmet-mode)

;; ------ 设置 emmet-mode -------
(setq emmet-expand-jsx-className? t)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))
;; ------ 设置 emmet-mode ------

;; ------ 设置 web-mode ------
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . rjsx-mode))
(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'rjsx-mode 'emmet-mode)
;; ------ 设置 web-mode ------

(provide 'init-web-mode)