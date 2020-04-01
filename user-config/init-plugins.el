;; ------ init-plugins ------
(require 'yasnippet)
(require 'ivy)
(require 'dired)

;; 使用 yasnippet
(yas-global-mode 1)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; ------ Dired Mode 下不同文件格式高亮 不生效 ------
(add-hook 'dired-mode-hook
          (lambda ()
            (highlight-lines-matching-regexp "\.js" 'hi-yellow)))
;; ------ Dired Mode 下不同文件格式高亮 不生效 ------

(provide 'init-plugins)