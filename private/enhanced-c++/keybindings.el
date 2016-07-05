;;; keybindings.el --- enhanced-c++ Layer key bindings File
;;
;; Copyright (c) 2016 ChrisChen
;;
;; Author: ChrisChen <ChrisChen3121@gmail.com>
;; URL: https://github.com/ChrisChen3121/.spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(add-hook 'c++-mode-hook
          (lambda()
            (define-key c++-mode-map [C-M-tab] 'clang-format-buffer)
            (define-key c++-mode-map [S-tab] 'clang-format-region)))
