(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
                   user-emacs-directory))

;; make up for the fact that windows and mac display heights differently
(defun system-font-height()
  (cond ((memq window-system '(mac ns)) (+ 165))
        ((memq window-system '(w32))  (+ 125))
))

(set-face-attribute 'default nil
                    :family "Inconsolata"
                    :height (system-font-height)
                    :weight 'normal
                    :width 'normal)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("59171e7f5270c0f8c28721bb96ae56d35f38a0d86da35eab4001aebbd99271a8" default)))
 '(whitespace-display-mappings
   (quote
    ((space-mark 32
                 [183]
                 [46])
     (space-mark 160
                 [164]
                 [95])
     (tab-mark 9
               [187 9]
               [92 9]))))
 '(whitespace-line-column 100))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line-buffer-id ((t (:foreground "#AAAAAA" :weight bold))))
 '(mode-line-highlight ((t (:foreground "#FFFFFF" :box nil))))
 '(whitespace-hspace ((t (:background "#282c34" :foreground "darkgray"))))
 '(whitespace-indentation ((t nil)))
 '(whitespace-space ((t (:background "#282c34" :foreground "darkgray")))))
