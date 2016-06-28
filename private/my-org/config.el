(setq org-agenda-files (quote ("~/Dropbox/Todo")))

;; (after-load 'org
;;             (org-babel-do-load-languages
;;              'org-babel-load-languages
;;              '((R . t)
;;                (ditaa . t)
;;                (plantuml . t)
;;                (dot . t)
;;                (emacs-lisp . t)
;;                (gnuplot . t)
;;                (haskell . nil)
;;                (latex . t)
;;                (ledger . t)
;;                (ocaml . nil)
;;                (octave . t)
;;                (python . t)
;;                (ruby . t)
;;                (screen . nil)
;;                (sh . t)
;;                (sql . nil)
;;                (sqlite . t))))

;; (after-load 'org-agenda
;;             (define-key org-agenda-mode-map (kbd "P") 'org-pomodoro))

;; (setq org-hide-leading-stars nil
;;       org-startup-indented t
;;       org-src-fontify-natively t
;;       org-startup-with-inline-images nil)

;; ;a_b will not be interpreted as a subscript, but a_{b} will.
;; (setq org-export-with-sub-superscripts "{}")

;; (after-load 'org
;;   (setq org-ditaa-jar-path (expand-file-name "~/.emacs.d/plugins/ditaa.jar")
;;         org-plantuml-jar-path (expand-file-name "~/.emacs.d/plugins/plantuml.jar")
;;         org-export-babel-evaluate nil
;;         org-publish-use-timestamps-flag nil
;;         org-table-export-default-format "orgtbl-to-csv"
;;         org-export-html-home/up-format '"<div id=\"org-div-home-and-up\">
;;  <a accesskey=\"h\" href=\"%s\"> UP </a>
;;  |
;;  <a accesskey=\"H\" href=\"%s\"> HOME </a>
;; </div>"
;;         org-babel-results-keyword "results"))

;; ;; preview image after org babel executed
;; (add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)

;; ;;===========================================
;; ;; mathjax
;; ;;===========================================
;; (setq org-html-mathjax-options
;;       '((path "https://cdn.mathjax.org/mathjax/latest/MathJax.js")
;;         (scale "100")
;;         (align "left")
;;         (indent "2em")
;;         (mathml nil)))

;; ;;============================================
;; ;; org project
;; ;;============================================
;; (setq org-publish-project-alist
;;       '(("note-org"
;;          :base-directory "~/github/notes/org"
;;          :publishing-directory  "~/github/notes"
;;          :base-extension "org"
;;          :recursive t
;;          :publishing-function org-html-publish-to-html
;;          :headline-levels 3   ;can be customized in org's head
;;          :style nil
;;          :auto-index nil
;;          :link-home "index.html"
;;          :section-numbers nil
;;          :html-preamble nil
;;          :html-postamble nil
;;          :auto-sitemap t                ; Generate sitemap.org automagically...
;;          :sitemap-title "ChrisChen的笔记"
;;          :exclude "sitemap.org")  ; ... call it sitemap.org (it's the default)...
;;         ("note-static"
;;          :base-directory "~/github/notes/org/resources/"
;;          :publishing-directory "~/github/notes/resources/"
;;          :recursive t
;;          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|zip\\|gz\\|txt\\|el"
;;          :publishing-function org-publish-attachment)
;;         ("note"
;;          :components ("note-org" "note-static")
;;          :author "ChrisChen3121@gmail.com"
;;          )

;;         ;;blog project
;;         ("blog-org"
;;          :base-directory "~/Dropbox/orgProject/Blog/org"
;;          :publishing-directory  "~/Dropbox/orgProject/Blog/html"
;;          :base-extension "org"
;;          :recursive t
;;          :publishing-function org-html-publish-to-html
;;          :headline-levels 3
;;          :style nil
;;          :auto-index nil
;;          :section-numbers nil
;;          :html-preamble nil
;;          :html-postamble nil
;;          :auto-sitemap nil)
;;         ("blog-static"
;;          :base-directory "~/Dropbox/orgProject/Blog/Resources"
;;          :publishing-directory "~/Dropbox/orgProject/Blog/html/Resources"
;;          :recursive t
;;          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|zip\\|gz\\|txt\\|el"
;;          :publishing-function org-publish-attachment)
;;         ("blog"
;;          :components ("blog-org" "blog-static")
;;          :author "ChrisChen3121@gmail.com"
;;          )

;;         ;;resume project
;;         ("resume-org"
;;          :base-directory "~/github/notes/resume"
;;          :publishing-directory  "~/github/notes"
;;          :base-extension "org"
;;          :recursive t
;;          :publishing-function org-html-publish-to-html
;;          :headline-levels nil
;;          :auto-index nil
;;          :section-numbers nil
;;          :html-preamble nil
;;          :html-postamble nil
;;          :auto-sitemap nil)
;;         ("resume"
;;          :components ("resume-org")
;;          :author "ChrisChen3121@gmail.com"
;;          )))

;; ; Targets include this file and any file contributing to the agenda - up to 9 levels deep
;; (setq org-refile-targets (quote ((nil :maxlevel . 9)
;;                                  (org-agenda-files :maxlevel . 9))))

;; ; Use full outline paths for refile targets - we file directly with IDO
;; (setq org-refile-use-outline-path t)

;; ; Targets complete directly with IDO
;; (setq org-outline-path-complete-in-steps nil)

;; ; Use IDO for both buffer and file completion and ido-everywhere to t
;; (setq org-completion-use-ido t)
;; (setq ido-everywhere t)
;; (setq ido-max-directory-size 100000)
;; (ido-mode (quote both))

;; ; Use the current window when visiting files and buffers with ido
;; (setq ido-default-file-method 'selected-window)
;; (setq ido-default-buffer-method 'selected-window)
;; ; Use the current window for indirect buffer display
;; (setq org-indirect-buffer-display 'current-window)

;; ; Allow refile to create parent tasks with confirmation
;; (setq org-refile-allow-creating-parent-nodes (quote confirm))


;; ;;==============================
;; ;; agenda
;; ;;==============================
;; ;; Do not dim blocked tasks
;; (setq org-agenda-dim-blocked-tasks nil)

;; ;; Compact the block agenda view
;; (setq org-agenda-compact-blocks t)

;; ;; Custom agenda command definitions
;; (setq org-agenda-custom-commands
;;       (quote (("N" "Notes" tags "NOTE"
;;                ((org-agenda-overriding-header "Notes")
;;                 (org-tags-match-list-sublevels t)))
;;               ("h" "Habits" tags-todo "STYLE=\"habit\""
;;                ((org-agenda-overriding-header "Habits")
;;                 (org-agenda-sorting-strategy
;;                  '(todo-state-down effort-up category-keep))))
;;               (" " "Agenda"
;;                ((agenda "" nil)
;;                 (tags "REFILE"
;;                       ((org-agenda-overriding-header "Tasks to Refile")
;;                        (org-tags-match-list-sublevels nil)))
;;                 (tags-todo "-CANCELLED/!"
;;                            ((org-agenda-overriding-header "Stuck Projects")
;;                             (org-agenda-skip-function 'bh/skip-non-stuck-projects)
;;                             (org-agenda-sorting-strategy
;;                              '(priority-down category-keep))))
;;                 (tags-todo "-HOLD-CANCELLED/!"
;;                            ((org-agenda-overriding-header "Projects")
;;                             (org-agenda-skip-function 'bh/skip-non-projects)
;;                             (org-agenda-sorting-strategy
;;                              '(priority-down category-keep))))
;;                 (tags-todo "-CANCELLED/!NEXT"
;;                            ((org-agenda-overriding-header "Project Next Tasks")
;;                             (org-agenda-skip-function 'bh/skip-projects-and-habits-and-single-tasks)
;;                             (org-tags-match-list-sublevels t)
;;                             (org-agenda-todo-ignore-scheduled bh/hide-scheduled-and-waiting-next-tasks)
;;                             (org-agenda-todo-ignore-deadlines bh/hide-scheduled-and-waiting-next-tasks)
;;                             (org-agenda-todo-ignore-with-date bh/hide-scheduled-and-waiting-next-tasks)
;;                             (org-agenda-sorting-strategy
;;                              '(priority-down todo-state-down effort-up category-keep))))
;;                 (tags-todo "-REFILE-CANCELLED-WAITING/!"
;;                            ((org-agenda-overriding-header (if (marker-buffer org-agenda-restrict-begin) "Project Subtasks" "Standalone Tasks"))
;;                             (org-agenda-skip-function 'bh/skip-project-tasks-maybe)
;;                             (org-agenda-todo-ignore-scheduled bh/hide-scheduled-and-waiting-next-tasks)
;;                             (org-agenda-todo-ignore-deadlines bh/hide-scheduled-and-waiting-next-tasks)
;;                             (org-agenda-todo-ignore-with-date bh/hide-scheduled-and-waiting-next-tasks)
;;                             (org-agenda-sorting-strategy
;;                              '(category-keep))))
;;                 (tags-todo "-CANCELLED+WAITING/!"
;;                            ((org-agenda-overriding-header "Waiting and Postponed Tasks")
;;                             (org-agenda-skip-function 'bh/skip-stuck-projects)
;;                             (org-tags-match-list-sublevels nil)
;;                             (org-agenda-todo-ignore-scheduled 'future)
;;                             (org-agenda-todo-ignore-deadlines 'future)))
;;                 (tags "-REFILE/"
;;                       ((org-agenda-overriding-header "Tasks to Archive")
;;                        (org-agenda-skip-function 'bh/skip-non-archivable-tasks)
;;                        (org-tags-match-list-sublevels nil))))
;;                nil))))

;; (setq org-refile-target-verify-function 'bh/verify-refile-target)

;; ;;==============================
;; ;; Refile settings
;; ;;==============================
;; (setq org-agenda-auto-exclude-function 'bh/org-auto-exclude-function)

;; (setq org-deadline-warning-days 30)

;; ;;==============================
;; ;; clock
;; ;;==============================
;; ;;
;; ;; Resume clocking task when emacs is restarted
;; (org-clock-persistence-insinuate)
;; ;;
;; ;; Show lot of clocking history so it's easy to pick items off the C-F11 list
;; (setq org-clock-history-length 23)
;; ;; Resume clocking task on clock-in if the clock is open
;; (setq org-clock-in-resume t)
;; ;; Change tasks to NEXT when clocking in
;; (setq org-clock-in-switch-to-state 'bh/clock-in-to-next)
;; ;; Separate drawers for clocking and logs
;; (setq org-drawers (quote ("PROPERTIES" "LOGBOOK")))
;; ;; Save clock data and state changes and notes in the LOGBOOK drawer
;; (setq org-clock-into-drawer t)
;; ;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration
;; (setq org-clock-out-remove-zero-time-clocks t)

;; ;; Clock out when moving task to a done state
;; (setq org-clock-out-when-done t)
;; ;; Save the running clock and all clock history when exiting Emacs, load it on startup
;; (setq org-clock-persist t)
;; ;; Do not prompt to resume an active clock
;; (setq org-clock-persist-query-resume nil)
;; ;; Enable auto clock resolution for finding open clocks
;; (setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
;; ;; Include current clocking task in clock reports
;; (setq org-clock-report-include-clocking-task t)

;; (setq bh/keep-clock-running nil)

;; (defvar bh/organization-task-id "5697cdb9-29c1-907e-9744-9ff20f0a6e7b")

;; (add-hook 'org-after-todo-state-change-hook 'bh/mark-next-parent-tasks-todo 'append)
;; (add-hook 'org-clock-in-hook 'bh/mark-next-parent-tasks-todo 'append)





;; (defvar bh/hide-scheduled-and-waiting-next-tasks t)


;; ;;============================
;; ;; Archive
;; ;;============================
;; (setq org-archive-mark-done nil)
;; (setq org-archive-location "%s_archive::* Archived Tasks")



;; ;;==============================
;; ;; Holiday and appt
;; ;;==============================
;; (setq org-agenda-include-diary nil)
;; (setq org-agenda-diary-file "~/Dropbox/Todo/diary.org")
;; (setq org-agenda-insert-diary-extract-time t)

;; ;;================================
;; ;; Searches Include Archive Files
;; ;;================================
;; (setq org-agenda-text-search-extra-files (quote (agenda-archives)))

;; ;;================================
;; ;; Other Config for agenda
;; ;;================================
;; ;; Show all future entries for repeating tasks
;; (setq org-agenda-repeating-timestamp-show-all t)

;; ;; Show all agenda dates - even if they are empty
;; (setq org-agenda-show-all-dates t)

;; ;; Sorting order for tasks on the agenda
;; (setq org-agenda-sorting-strategy
;;       (quote ((agenda habit-down time-up user-defined-up priority-down effort-up category-keep)
;;               (todo category-up priority-down effort-up)
;;               (tags category-up priority-down effort-up)
;;               (search category-up))))

;; ;; Start the weekly agenda on Monday
;; (setq org-agenda-start-on-weekday 1)

;; ;; Enable display of the time grid so we can see the marker for the current time
;; (setq org-agenda-time-grid (quote ((daily today remove-match)
;;                                    #("----------------" 0 16 (org-heading t))
;;                                    (0900 1100 1300 1500 1700))))

;; ;; Display tags farther right
;; (setq org-agenda-tags-column -102)

;; ;;
;; ;; Agenda sorting functions
;; ;;
;; (setq org-agenda-cmp-user-defined 'bh/agenda-sort)


;; ;; Use sticky agenda's so they persist
;; (setq org-agenda-sticky t)

;; ;;======================================
;; ;; Habit
;; ;;======================================
;; (setq org-modules (quote (org-habit)))
;; (setq org-habit-graph-column 50)
;; (run-at-time "06:00" 86400 '(lambda () (setq org-habit-show-habits t)))

;; ;;======================================
;; ;; Fix for sql highlight
;; ;;======================================
;; (add-hook 'sql-mode-hook
;;           (lambda ()
;;             (sql-highlight-mysql-keywords)))
