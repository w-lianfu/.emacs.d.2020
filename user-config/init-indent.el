;; ------ 设置缩进 ------

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq default-tab-width 2)
;; make return key also do indent, globally
;; (electric-indent-mode -1)
(setq c-basic-offset 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq css-indent-offset 2)
(setq javascript-indent-level 2)
(setq js-indent-level 2)
(setq typescript-indent-level 2)
(setq ts-indent-level 2)
(setq tsx-indent-offset 2)
(setq rust-indent-unit 2)
(setq rust-indent-offset 2)

(provide 'init-indent)
