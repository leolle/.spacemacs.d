;;; keybindings.el --- my-python Layer key bindings File
;;
;; Copyright (c) 2016 Chris Chen
;;
;; Author: Chris Chen <ChrisChen3121@gmail.com>
;; URL: https://github.com/ChrisChen3121/.spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(add-hook 'python-mode-hook
          (lambda ()
            (which-key-add-major-mode-key-based-replacements 'python-mode
              "C-c r" "anaconda refactor cmds"
              "C-c C-t" "skeleton"
              "C-c !" "flycheck")
            (define-key python-mode-map (kbd "C-c C-b") 'python-add-breakpoint)
            (define-key python-mode-map (kbd "C-c C-d") 'sphinx-doc)))
