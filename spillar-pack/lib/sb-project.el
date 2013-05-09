(require 'speedbar)


;;; Commentary:
;;
;;  Speedbar provides a frame in which files, and locations in files are
;; displayed. These functions provide Project specific support, showing
;; project names and folders in them in the side-bar.
;;
;; This file requires speedbar
;;
;;; Code

(defvar project-speedbar-key-map nil
  "Keymap used when in the project display mode")

;; constant value used as a name of display mode
(defvar mode-name "project")
;; key used to switch display mode
(defvar mode-key "s")

(defun project-install-speedbar-variables ()
  "Install those variables used by speedbar to enable project info"
  (if project-speedbar-key-map nil
    (setq project-speedbar-key-map (speedbar-make-specialized-keymap))

    ;; Basic tree features
    (define-key project-speedbar-key-map "e" 'speedbar-edit-line)
    (define-key project-speedbar-key-map mode-key
      (lambda () (interactive)
        (speedbar-change-initial-expansion-list mode-name)))
    )
  (append speedbar-initial-expansion-mode-alist
          '(mode-name nil
                      project-speedbar-key-map get-hierarchy-buttons)))


(defvar -menu-items
  '(["Browse Project" speedbar-edit-line t])
  "Additional menu itmes to add to speedbar frame.")


(defun get-hierarchy-buttons (dir depth &optional node)
  "Show imenu for current buffer"
  )


(defun project-speedbar-prowser ()
  "Initialize speedbar to display an info node browser.
This will add speedbar major display mode"
  (interactive)
  (require 'speedbar)
  (speedbar-frame-mode 1)
  (speedbar-change-initial-expansion-list mode-name))


;; Make sure our special speedbar major mode is loaded
(if (featurep 'speedbar)
    (project-install-speedbar-variables)
  (add-hook 'speedbar-load-hook 'project-install-speedbar-variables))


(provide 'sb-project)
