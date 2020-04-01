;; ------ init-default ------
(require 'helm)
(require 'eshell)
(require 'treemacs)
(require 'evil)
(require 'recentf)

;; ------ 绑定全局快捷键 ------
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "<f2>") 'hs-toggle-hiding)
(global-set-key (kbd "<f5>") 'eshell)
(global-set-key (kbd "<f8>") 'treemacs)
(global-set-key (kbd "<f9>") 'evil-mode)
;; ------ 绑定全局快捷键 ------

;; 添加最近打开的文件
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(setq recentf-max-saved-items 10)
(setq package-check-signature nil)

;; ------ 设置主题 ------
;; (load-theme 'dracula t)
;; (load-theme 'material t)
;; (load-theme 'monokai t)
(load-theme 'spacemacs-dark t)
;; (load-theme 'spacemacs-light t)
;; (load-theme 'solarized t)
;; (load-theme 'zenburn t)
;; ------ 设置主题 ------

;; 解决 eshell 乱码问题
;; (autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
;; (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(provide 'init-default)
