;;; duckyscript-mode.el --- description -*- lexical-binding: t; -*-
;;;
;;; Commentary:
;;;
;;; A mode for
;;; Duckyscript(https://github.com/hak5darren/USB-Rubber-Ducky/wiki/Duckyscript)
;;;
;;; Code:

(defvar duckyscript-highlights
      '(
        ;; Comments
        ("REM.*" . font-lock-comment-face)
        ;; program functions
        ("STRING\\|DELAY\\|DEFAULT_DELAY\\|DEFAULTDELAY" . font-lock-function-name-face)
        ;; Keypresses
        ;; boy this is fucking long
        ("GUI\\|WINDOWS\\|ENTER\\|APP\\|MENU\\|RIGHT\\|RIGHTARROW\\|LEFT\\|LEFTARROW\\|UP\\|UPARROW\\|DOWN\\|DOWNARROW\\|BREAK\\|PAUSE\\|DELETE\\|END\\|ESC\\|ESCAPE\\|HOME\\|INSERT\\|PAGEUP\\|PAGEDOWN\\|PRINTSCREEN\\|SPACE\\|TAB\\|CAPSLOCK\\|NUMLOCK\\|SCROLLOCK\\|CTRL\\|CONTROL\\|ALT\\|SHIFT" . font-lock-constant-face)))


(define-derived-mode duckyscript-mode prog-mode "duckyscript"
  "major mode for duckyscript"
  (setq font-lock-defaults '(duckyscript-highlights)))


(provide 'duckyscript-mode)
;;; duckyscript-mode.el ends here
