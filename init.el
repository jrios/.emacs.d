;; Packages
(load "package")

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
                   user-emacs-directory))
