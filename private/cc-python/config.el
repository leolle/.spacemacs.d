;;; config.el --- cc-python layer Configuration file for Spacemacs.
;;
;; Copyright (c) 2016 ChrisChen
;;
;; Author: ChrisChen <ChrisChen3121@gmail.com>
;; URL: https://github.com/ChrisChen3121/.spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(add-hook 'python-mode-hook
          (lambda ()
            (sphinx-doc-mode t)
            ))
(setq python-shell-interpreter "ipython")

(setq ein:complete-on-dot -1)
(setq ein:use-auto-complete 1)
