;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.
(let (
      (mypaths
       (list
         "/home/spillar/bin"
         (getenv "PATH")
         )
       ))

  (setenv "PATH" (mapconcat 'identity mypaths ":") )
  (setq exec-path (append mypaths (list "." exec-directory)) ))

;; Load bindings config
(live-load-config-file "bindings.el")
(live-load-config-file "s-sr-speedbar.el")
(live-load-config-file "projectile-rc.el")

;; change font
(set-frame-font "Monaco-10")
