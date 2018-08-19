;; definition of general utility functions
(defun jjpandari/update-persp-name ()
  (when (bound-and-true-p persp-mode)
    ;; There are multiple implementations of
    ;; persp-mode with different APIs
    (progn
      (or (not (string= persp-nil-name (safe-persp-name (get-frame-persp))))
          "Default")
      (let ((name (safe-persp-name (get-frame-persp))))
        (propertize (concat "[" name "] ")
                    'face 'font-lock-preprocessor-face
                    'help-echo "Current Layout name.")))))


(defun spaceline--unicode-number (str)
  "Return a nice unicode representation of a single-digit number STR."
  (cond
   ((string= "1" str) "➊")
   ((string= "2" str) "➋")
   ((string= "3" str) "➌")
   ((string= "4" str) "➍")
   ((string= "5" str) "➎")
   ((string= "6" str) "➏")
   ((string= "7" str) "➐")
   ((string= "8" str) "➑")
   ((string= "9" str) "➒")
   ((string= "0" str) "➓")))

(defun window-number-mode-line ()
  "The current window number. Requires `window-numbering-mode' to be enabled."
  (when (bound-and-true-p window-numbering-mode)
    (let* ((num (window-numbering-get-number))
           (str (when num (int-to-string num))))
      (spaceline--unicode-number str))))

(defun mode-line-fill (face reserve)
  "Return empty space using FACE and leaving RESERVE space on the right."
  (unless reserve
    (setq reserve 20))
  (when (and window-system (eq 'right (get-scroll-bar-mode)))
    (setq reserve (- reserve 3)))
  (propertize " "
              'display `((space :align-to
                                (- (+ right right-fringe right-margin) ,reserve)))
              'face face))

(defun buffer-encoding-abbrev ()
  "The line ending convention used in the buffer."
  (let ((buf-coding (format "%s" buffer-file-coding-system)))
    (if (string-match "\\(dos\\|unix\\|mac\\)" buf-coding)
        (match-string 1 buf-coding)
      buf-coding)))

(defvar jjpandari/flycheck-mode-line
;; (setq jjpandari/flycheck-mode-line ;; this is for debug
      '(:eval
        (pcase flycheck-last-status-change
          (`not-checked nil)
          (`no-checker "❄")
          (`running (propertize "..." 'face 'success))
          (`errored (propertize "!" 'face 'error))
          (`finished
           (let* ((error-counts (flycheck-count-errors flycheck-current-errors))
                  (no-errors (cdr (assq 'error error-counts)))
                  (no-warnings (cdr (assq 'warning error-counts)))
                  (face (cond (no-errors 'error)
                              (no-warnings 'warning)
                              (t 'success))))
             (append
              (if no-errors
                  (list
                   (propertize "❌" 'face '(:family "Apple Color Emoji" :height 0.7))
                   (propertize (format "%s" (or no-errors 0))
                               'face 'error))
                nil)
              (if no-warnings
                  (list
                   (propertize "⚠" 'face '(:family "Apple Color Emoji" :height 0.8))
                   (propertize (format "%s" (or no-warnings 0))
                               'face 'warning))
                nil)
              )))
          (`interrupted ".")
          (`suspicious '(propertize "?" 'face 'warning)))))

(defvar jjpandari/which-function-mode-line-off-modes '(web-mode scss-mode))

(with-eval-after-load 'anzu
  (with-eval-after-load 'evil-anzu
    (with-eval-after-load 'which-func
      (setq-default mode-line-format
                    ;; (setq mode-line-format ;; this is for debug
                    (list

                     " %1"
                     ;; evil state
                     '(:eval evil-mode-line-tag)

                     " %+"

                     ;; anzu
                     '(:eval (if anzu--state " " ""))
                     anzu--mode-line-format

                     ;; "%1"
                     ;; '(:eval (propertize
                     ;;          (window-number-mode-line)
                     ;;          'face
                     ;;          'font-lock-type-face))

                     ;; " "
                     ;; '(:eval (jjpandari/update-persp-name))

                     "%1 "
                     ;; the buffer name; the file name as a tool tip
                     '(:eval (propertize "%b " 'face 'font-lock-keyword-face
                                         'help-echo (buffer-file-name)))

                     ;; the current major mode for the buffer.
                     '(:eval (propertize "%m" 'face 'font-lock-string-face
                                         'help-echo buffer-file-coding-system))

                     ;; " [" ;; insert vs overwrite mode, input-method in a tooltip
                     ;; '(:eval (propertize (if overwrite-mode "Ovr" "Ins")
                     ;;                     'face 'font-lock-preprocessor-face
                     ;;                     'help-echo (concat "Buffer is in "
                     ;;                                        (if overwrite-mode
                     ;;                                            "overwrite"
                     ;;                                          "insert") " mode")))

                     ;; ;; was this buffer modified since the last save?
                     ;; '(:eval (when (buffer-modified-p)
                     ;;           (concat ","  (propertize "Mod"
                     ;;                                    'face 'font-lock-warning-face
                     ;;                                    'help-echo "Buffer has been modified"))))

                     ;; ;; is this buffer read-only?
                     ;; '(:eval (when buffer-read-only
                     ;;           (concat ","  (propertize "RO"
                     ;;                                    'face 'font-lock-type-face
                     ;;                                    'help-echo "Buffer is read-only"))))
                     ;; "] "

                     " %1"
                     jjpandari/flycheck-mode-line

                     " %1"
                     '(:eval (unless (member major-mode jjpandari/which-function-mode-line-off-modes) which-func-format))

                     ;; git info
                     '(:eval (when vc-mode
                               (concat
                                (propertize " " 'face '(:family "all-the-icons" :height 1.0))
                                (s-replace " Git" "" vc-mode))))
                     ;; '(:eval (replace-regexp-in-string " Git\(@\|:\|-\)" "" vc-mode))

                     ;; minor modes
                     ;; minor-mode-alist

                     ;; " "
                     ;; global-mode-string (like org) goes in mode-line-misc-info
                     ;; mode-line-misc-info

                     ;; TODO Error during redisplay:
                     ;; (eval (if (boundp (quote org-pomodoro-mode-line)) org-pomodoro-mode-line org-mode-line-string))
                     ;; signaled (void-variable org-mode-line-string)
                     ;; '(:eval (if (boundp 'org-pomodoro-mode-line) org-pomodoro-mode-line org-mode-line-string))

                     (mode-line-fill 'mode-line 20)

                     ;; line and column
                     ;; "(" ;; '%02' to set to 2 chars at least; prevents flickering
                     ;; (propertize "%2l" 'face 'font-lock-type-face) ","
                     (propertize " ❚%2c" 'face 'font-lock-type-face)
                     ;; ") "

                     '(:eval (format " %s" buffer-file-coding-system))

                     ;; size of file
                     " "
                     (propertize "%I" 'face 'font-lock-constant-face) ;; size

                     ;; add the time, with the date and the emacs uptime in the tooltip
                     ;; '(:eval (propertize (format-time-string "%H:%M")
                     ;;                     'help-echo
                     ;;                     (concat (format-time-string "%c; ")
                     ;;                             (emacs-uptime "Uptime:%hh"))))

                     mode-line-end-spaces

                     ))
      )))
