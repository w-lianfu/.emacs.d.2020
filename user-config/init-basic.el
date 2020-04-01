;; ------ init-basic ------

;; 设置默认屏幕宽高
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 130))
(add-to-list 'default-frame-alist '(left . 60))

;; 显示行号
(global-linum-mode t)
;; 高亮当前行
(global-hl-line-mode t)
;; 关闭工具栏
(tool-bar-mode -1)
;; 关闭滚动轴
(scroll-bar-mode -1)
;; 关闭启动帮助画面
(setq inhibit-splash-screen -1)
;; 关闭菜单栏
(menu-bar-mode -1)
;; 状态栏显示行列信息
(column-number-mode t)
;; 自动补全括号
(electric-pair-mode t)
;; 关闭起动时闪屏
;; (setq inhibit-startup-message t)
(setq-default show-trailing-whitespace t)
;; 设置光标样式
;; (setq-default cursor-type 'bar)
;; (setq evil-hybrid-state-cursor '("yellow" box))
;; (set-cursor-color "#d500f9")
;; 禁止光标闪烁
(blink-cursor-mode -1)
;; 编辑时禁用触摸板与鼠标
;; 需要安装plugin: disable-mouse
(global-disable-mouse-mode t)
;; 关闭自动生产备份文件
(setq make-backup-files nil)
;; 关闭自动保存文件
(setq auto-save-default nil)
;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)
(setq create-lockfiles nil)
;; 设置编码
(set-language-environment "UTF-8")
;; 显示时间
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;; 自动将光标移动到新创建的窗口中
(require 'popwin)
(popwin-mode 1)
;; 关闭警告提示音
(setq ring-bell-function 'ignore)

;; 删除换行符
(defun remove-dos-eol ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;; 不显示 *scratch*
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; 更改显示字体大小
;; (set-frame-font "Helvetica" t t)
;; (set-frame-font "Monokai")
;; (set-frame-font "Open Sans")
(set-frame-font "Monaco")
(set-face-attribute 'default nil
		    :height 140
		    :weight 'normal
		    :width 'normal)


;; ------ 设置编码 UTF-8 ------

(prefer-coding-system 'utf-8)
;; 设置emacs 使用 utf-8
(setq locale-coding-system 'utf-8)
;; 设置键盘输入时的字符编码
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
;; 文件默认保存为 utf-8
(set-buffer-file-coding-system 'utf-8)
(set-default buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
;; 解决粘贴中文出现乱码的问题
(set-clipboard-coding-system 'utf-8)
;; 终端中文乱码
(set-terminal-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
;; 解决文件目录的中文名乱码
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)

;; ------ 设置编码 UTF-8 ------

(provide 'init-basic)
