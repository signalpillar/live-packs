;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.
(let (
      (mypaths
       (list
         "/Users/signalpillar/bin"
         "/usr/bin"
         "/bin"
         (getenv "PATH")
         )
       ))

  (setenv "PATH" (mapconcat 'identity mypaths ":") )
  (setq exec-path (append mypaths (list "." exec-directory)) ))

(require 'package)
;; declare repositories that will be used by package.el
(add-to-list 'package-archives
 '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
 '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
 '("gnu" . "http://elpa.gnu.org/packages/"))

(package-initialize)

;(require 'evil-mode)
(evil-mode 1)

;; Load bindings config
(live-load-config-file "mac.el")
(live-load-config-file "bindings.el")
(live-load-config-file "clojure-rc.el")
(live-load-config-file "markdown-rc.el")
(live-load-config-file "deft-rc.el")
(live-load-config-file "python-rc.el")
(live-load-config-file "org-mode-rc.el")
(live-load-config-file "haskell-rc.el")
;(live-load-config-file "s-sr-speedbar.el")
(live-load-config-file "projectile-rc.el")



(require 'whitespace)
(setq whitespace-line-column 80) ;; limit the length
(setq whitespace-style '(lines-tail))

(global-whitespace-mode +1)

(defun jao-toggle-selective-display ()
  (interactive)
  (set-selective-display (if selective-display nil 1)))

(global-set-key [f3] 'jao-toggle-selective-display)

;One option is to tell Emacs to never split windows, which can be done like so:
(setq same-window-regexps '("."))


;; create temporary buffer
(defun generate-buffer ()
  (interactive)
  (switch-to-buffer (make-temp-name "temp-")))

(global-set-key (kbd "M-n") 'generate-buffer)

;; move backward in navigation history like in eclipse
(global-set-key (kbd "M-[") 'pop-global-mark)

(require 'github-theme)
;; change font
(set-frame-font "Consolas-14")
