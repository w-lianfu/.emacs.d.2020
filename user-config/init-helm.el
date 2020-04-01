;; ------ init-helm ------
(require 'helm-config)
(require 'helm-projectile)

(helm-mode 1)
(helm-projectile-on)
(setq helm-autoresize-min-height 10)
(setq helm-autoresize-max-height 10)

(provide 'init-helm)