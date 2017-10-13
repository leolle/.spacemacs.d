;;; config.el --- cc-org layer Configuration file for Spacemacs.
;;
;; Copyright (c) 2016 Wei Wu
;;
;; Author: Wei Wu <victor.wuv@gmail.com>
;; URL: https://github.com/leolle/.spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

  (setq org-publish-project-alist
      '(("note-org"
         :base-directory "~/website/leolle.github.io/"
         :publishing-directory  "~/website/leolle.github.io/docs/"
         :base-extension "org"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 3
         :style nil
         :auto-index nil
         :section-numbers nil
         :html-preamble nil
         :html-postamble nil
         :auto-sitemap nil
         :sitemap-titles "Wei's notes"
         ;;:sitemap-filename "sitemap.org"
         ;;:exclude "sitemap.org"
         )
        ("note-static"
         :base-directory "~/website/leolle.github.io/img"
         :publishing-directory "~/website/leolle.github.io/docs/img"
         :recursive t
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|html\\|zip\\|gz\\|txt\\|el"
         :publishing-function org-publish-attachment)
        ("note"
         :components ("note-org" "note-static")
         :authors "Wei Wu"
         :email "victor.wuv@gmail.com"
         )))
