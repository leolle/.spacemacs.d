;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
(setq configuration-layer--elpa-archives
      '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
        ("org-cn"   . "http://elpa.emacs-china.org/org/")
        ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))
(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/private/")
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     emacs-lisp
     better-defaults
     chrome
     jedi
     flycheck
     rg
     py-yapf
     elpy
     (colors :variables
             colors-enable-rainbow-identifiers nil
             colors-enable-nyan-cat-progress-bar t)
     syntax-checking

     ;; source control
     (git :variables
          git-enable-magit-svn-plugin t
          magit-repository-directories '("~/website/leolle.github.io"))
     github

     ;; org bundle
     (org :variables
          org-enable-github-support t)
     (deft :variables
       deft-directory "~/website/leolle.github.io/")
     (spell-checking :variables
                     spell-checking-enable-by-default nil)

     ;; for development
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-help-tooltip t
                      auto-completion-private-snippets-directory "~/.spacemacs.d/private/snippets/")
     ;;cscope
     (plantuml :variables
               plantuml-jar-path "/usr/bin/plantuml"
               org-plantuml-jar-path "/usr/bin/plantuml"
               plantuml-output-type "png")
     gtags
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     semantic
     games
     (shell :variables
            shell-default-shell 'eshell
            shell-default-height 30
            shell-default-position 'bottom
            ;; shell-enable-smart-eshell t
            ;; shell-protect-eshell-prompt nil
            shell-default-term-shell "/bin/zsh")

     (python :variables
             python-test-runner 'pytest
             python-enable-yapf-format-on-save t
             py-yapf-options '("--style=google"))

     markdown
     yaml
     ;; chinese

     ;; private layers
     cc-org
     cc-python
     cc-c++
     cc-protobuf
     cc-puml
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     switch-window
     whole-line-or-region
     auctex
     jedi
     pydoc-info
     ;; ein
     py-autopep8
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages
   '(
     gnuplot
     rainbow-identifiers
     gist
     git-flow
     evil-org-mode
     ;; smartparens
     )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects bookmarks)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         occidental
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Monaco"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1
                               )
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   ;; dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; pythonpath
  ;; (add-to-list 'python-shell-extra-pythonpaths "/home/weiwu/projects/ylib-py/")
  (setq user-mail-address "victor.wuv@gmail.com")
  ;; org 自动换行
  (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
  (setq dired-recursive-copies 'always)
  (delete-selection-mode 1)
  (set-language-environment 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-clipboard-coding-system 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-buffer-file-coding-system 'utf-8)
  (set-selection-coding-system 'utf-8)
  (modify-coding-system-alist 'process "*" 'utf-8)

  (setq default-process-coding-system
        '(utf-8 . utf-8))
  (setq-default pathname-coding-system 'utf-8)
  (global-set-key (kbd "C-x o") 'switch-window)
  (global-set-key (kbd "C-x C-b") 'buffer-menu-other-window)
  (global-set-key (kbd "C-w") 'whole-line-or-region-kill-region)
  (global-set-key (kbd "M-w") 'whole-line-or-region-kill-ring-save)
  (global-set-key (kbd "S-SPC") 'set-mark-command)
  (global-set-key (kbd "<C-return>") 'newline-without-break-of-line)
;(setq python-shell-interpreter-args "-pylab")
  ;; need to check: semantic makes scroll-down-command not work
  (global-set-key (kbd "M-v") 'scroll-down)
  (setq default-cursor-type 'bar)
  ;; 关闭启动帮助画面
  (setq inhibit-splash-screen 1)
  ;; (add-to-list 'python-shell-extra-pythonpaths "/home/weiwu/tools/WaveFront/PythonScripts/")
;; 快速打开配置文件
  (defun open-init-file()
     (interactive)
     (find-file "~/.spacemacs.d/init.el"))

  ;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
  (global-set-key (kbd "<f2>") 'open-init-file)
  ;; for chrome layer
  (setq edit-server-url-major-mode-alist
        '(("github\\.com" . markdown-mode)))
  (setq edit-server-default-major-mode 'markdown-mode)
  ;; (setq org-publish-project-alist
  ;;     '(

  ;;       ("org-notes"
  ;;        :base-directory "~/website/leolle.github.io/"
  ;;        :base-extension "org"
  ;;        :publishing-directory "~/website/leolle.github.io/docs/"
  ;;        :recursive t
  ;;        :publishing-function org-html-publish-to-html
  ;;        :headline-levels 4             ; Just the default for this project.
  ;;        :auto-preamble t
  ;;        )
  ;;       ("org-static"
  ;;        :base-directory "~/website/leolle.github.io/"
  ;;        :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
  ;;        :publishing-directory "~/website/leolle.github.io/docs/"
  ;;        :recursive t
  ;;        :publishing-function org-publish-attachment
  ;;        )
  ;;       ("org" :components ("org-notes" "org-static"))
  ;;       ))
  ;; enable rainbow-mode only for writting css
  (add-hook 'css-mode-hook 'rainbow-mode)

  ;; development common
 ;; (smartparens-global-mode)
  (which-key-add-key-based-replacements
    "C-c @" "hs-cmds"
    "C-c !" "flycheck"
    "C-c p" "projectile"
    "C-c ," "semantic")
  ;; hs cmds
  (global-set-key (kbd "C-c @ t") 'hs-toggle-hiding)
  (global-set-key (kbd "C-c @ s") 'hs-show-all)
  (global-set-key (kbd "C-c @ h") 'hs-hide-all)
  ;; newline-without-break-of-line
  (defun newline-without-break-of-line ()
    "1. move to end of the line.
  2. insert newline with index"

    (interactive)
    (let ((oldpos (point)))
      (end-of-line)
      (newline-and-indent)))


  (defun select-current-line ()
    "Select the current line"
    (interactive)
    (end-of-line) ; move to end of line
    (set-mark (line-beginning-position)))
  (global-set-key (kbd "C-c l") 'newline-without-break-of-line)


  ;; for c++ layer
  ;; Bind clang-format-region to S-tab in all modes:
  (defun clang-config ()
    (setq clang-format-style "Google")
    (setq flycheck-clang-language-standard "c++11")
    (define-key c++-mode-map [backtab] 'clang-format-buffer)
    (define-key c++-mode-map (kbd "C-c d") 'disaster))
  ;; Bind clang-format-buffer to tab on the c++-mode only:
  (add-hook 'c++-mode-hook 'clang-config)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode)
  (add-hook 'python-mode-hook 'anaconda-mode)
  ;; for python layer
  (add-hook 'anaconda-mode-hook
            (lambda ()
              (define-key anaconda-mode-map (kbd "M-,") 'anaconda-mode-go-back)
              (define-key anaconda-mode-map (kbd "C-c r b") 'anaconda-mode-go-back)
              (define-key anaconda-mode-map (kbd "C-c r d") 'anaconda-mode-show-doc)
              (define-key anaconda-mode-map (kbd "C-c r f") 'anaconda-mode-find-definitions)
              (define-key anaconda-mode-map (kbd "C-c r r") 'anaconda-mode-find-references)
              (define-key anaconda-mode-map (kbd "C-c r a")	'anaconda-mode-find-assignments)))
  )

;;   (defun copy-line (arg)
;;   "Copy lines (as many as prefix argument) in the kill ring.
;;       Ease of use features:
;;       - Move to start of next line.
;;       - Appends the copy on sequential calls.
;;       - Use newline as last char even on the last line of the buffer.
;;       - If region is active, copy its lines."
;;   (interactive "p")
;;   (let ((beg (line-beginning-position))
;;         (end (line-end-position arg)))
;;     (when mark-active
;;       (if (> (point) (mark))
;;           (setq beg (save-excursion (goto-char (mark)) (line-beginning-position)))
;;         (setq end (save-excursion (goto-char (mark)) (line-end-position)))))
;;     (if (eq last-command 'copy-line)
;;         (kill-append (buffer-substring beg end) (< end beg))
;;       (kill-ring-save beg end)))
;;   (kill-append "\n" nil)
;;   (beginning-of-line (or (and arg (1+ arg)) 2))
;;   (if (and arg (not (= 1 arg))) (message "%d lines copied" arg)))
;; ;; optional key binding
;; (global-set-key "\C-c\C-k" 'copy-line)

;; (defun quick-cut-line ()
;;   "Cut the whole line that point is on.  Consecutive calls to this command append each line to the kill-ring."
;;   (interactive)
;;   (let ((beg (line-beginning-position 1))
;;         (end (line-beginning-position 2)))
;;     (if (eq last-command 'quick-cut-line)
;;         (kill-append (buffer-substring beg end) (< end beg))
;;       (kill-new (buffer-substring beg end)))
;;     (delete-region beg end))
;;   (beginning-of-line 1)
;;   (setq this-command 'quick-cut-line))

;; (global-set-key (kbd "C-f11") 'quick-cut-line)

;;=====================================================================
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((flycheck-clang-definitions "IB_USE_STD_STRING")
     (company-clang-arguments "-DIB_USE_STD_STRING")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
