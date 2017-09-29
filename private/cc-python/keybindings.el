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
              "C-c r" "anaconda find reference cmds"
              "C-c C-t" "skeleton"
              "C-c !" "flycheck")
            (define-key python-mode-map (kbd "C-c C-b") 'python-add-breakpoint)
            (define-key python-mode-map (kbd "C-c C-d") 'sphinx-doc)
            (define-key python-mode-map (kbd "C-c C-c") 'python-shell-send-buffer-switch)))

;; tab the whole block
(defun my-indent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N 4))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(defun my-unindent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N -4))
             (setq deactivate-mark nil))
    (self-insert-command N)))

;;(global-set-key "TAB" 'my-indent-region)
;;(global-set-key "S-TAB" 'my-unindent-region)
;; set M-[ as find definition
;; set M-] as find next reference
