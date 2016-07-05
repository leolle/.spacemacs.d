;;; packages.el --- enhanced-c++ layer packages file for Spacemacs.
;;
;; Copyright (c) 2016 ChrisChen
;;
;; Author: ChrisChen <ChrisChen3121@gmail.com>
;; URL: https://github.com/ChrisChen3121/.spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst enhanced-c++-packages
  '(
    google-c-style
    ))

(defun enhanced-c++/init-google-c-style ()
  (use-package google-c-style
    :init
    (progn
      (add-hook 'c-mode-common-hook
                (lambda ()
                  (google-set-c-style)
                  (google-make-newline-indent)))
      (add-hook 'c++-mode-hook
                (lambda ()
                  (clang-format-bindings))))))
