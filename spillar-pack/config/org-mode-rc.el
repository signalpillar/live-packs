(require 'org-install)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "~/l/org/"))

(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/l/org/atwork.org" "Task")
         "* TODO %?\n %i\n")
        ("p" "Project" entry (file+headline "~/l/org/atwork.org" "Projects")
         "* %?\n %i\n")))
