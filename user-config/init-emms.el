;; ------ init-emms ------
(add-to-list 'load-path "~/.emacs.d/emms/lisp")
(require 'emms-setup)
(require 'emms-player-vlc)
(emms-standard)
(emms-default-players)
(setq emms-player-vlc-command-name
      "/Applications/VLC.app/Contents/MacOS/VLC")
(setq emms-player-list '(
			 emms-player-vlc))

(provide 'init-emms)
