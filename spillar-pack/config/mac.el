(when (eq system-type 'darwin)
  (setq mac-option-modifier 'control)
  (setq mac-command-modifier 'meta)

;  (set terminal-coding-system 'utf-8)
  (set keyboard-coding-system 'utf-8)
  (prefer-coding-system 'utf-8))
