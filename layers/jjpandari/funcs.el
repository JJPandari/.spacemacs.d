;; definition of general utility functions

;; https://emacs-china.org/t/topic/4494/25?u=jjpandari
(defun insert-or-remove-trailing-char (c)
  (let ((fn (lambda (c)
              (end-of-line)
              (if (eq (char-before) c)
                  (delete-backward-char 1)
                (insert-char c)))))
    (save-excursion
      (if (region-active-p)
          (save-restriction
            (narrow-to-region (region-beginning) (region-end))
            (deactivate-mark)
            (goto-char (point-min))
            (funcall fn c)
            (while (< (point) (point-max))
              (next-line)
              (when (< (point) (point-max))
                (funcall fn c))))
        (funcall fn c)))))

(defun insert-or-remove-trailing-semi (&optional arg)
  (interactive "*P")
  (insert-or-remove-trailing-char ?\;))

(defun insert-or-remove-trailing-comma (&optional arg)
  (interactive "*P")
  (insert-or-remove-trailing-char ?,))

(defun jjpandari/move-line-up (count)
  "Move prefix-arg lines up."
  (interactive "p")
  (if (region-active-p)
      (let* ((beg (region-beginning))
             (end (region-end))
             (beg-line (line-number-at-pos beg))
             (end-line (line-number-at-pos end))
             (line-count (1+ (- end-line beg-line))))
        (move-text-up beg end count)
        ;; TODO goto point min not working?
        (goto-char (point-min))
        (forward-line (- beg-line count))
        (message (format "%s" (- beg-line count)))
        (indent-region (point) (line-beginning-position (+ 1 line-count)))
        )
    (move-text-up (line-beginning-position) (line-beginning-position 2) count)
    (deactivate-mark)
    (indent-for-tab-command))
  )

(defun jjpandari/move-line-down (count)
  "Move prefix-arg lines down."
  (interactive "p")
  (if (region-active-p)
      (let* ((beg (region-beginning))
             (end (region-end))
             (beg-line (line-number-at-pos beg))
             (end-line (line-number-at-pos end))
             (line-count (1+ (- end-line beg-line))))
        (move-text-down beg end count)
        (goto-char (point-min))
        (forward-line (- beg-line count))
        (indent-region (point) (line-beginning-position (+ 1 line-count)))
        )
    (move-text-down (line-beginning-position) (line-beginning-position 2) count)
    (deactivate-mark)
    (indent-for-tab-command))
  )

;; like web-mode-on-post-command
(defun jjpandari/on-post-newline ()
  "Insert an extra line if inside a tag."
  (let (n)
    (when (and (member this-command '(newline electric-newline-and-maybe-indent newline-and-indent))
               (and (looking-back ">\n[\s\t]*" (point-min))
                    (not (looking-back "/[^>]*>\n[\s\t]*" (point-min)))
                    (looking-at "[\s\t]*</")
                    ))
      (newline-and-indent)
      (forward-line -1)
      (indent-according-to-mode)
      )
    ))

;; https://stackoverflow.com/a/21656063/4788022
(defun jjpandari/merge-imenu (index-fun)
  (interactive)
  (let ((mode-imenu (funcall index-fun))
        (custom-imenu (imenu--generic-function imenu-generic-expression)))
    (append custom-imenu mode-imenu)))

(defun jjpandari/expand-to-ternary ()
  "Add a ternary expression, using the symbol before point as the first field."
  (interactive)
  (yas-expand-snippet " ? $1 : $0"))

(defun jjpandari/expand-to-ternary-condensed ()
  "Add a (condensed) ternary expression, using the symbol before point as the first field."
  (interactive)
  (yas-expand-snippet "?$1:$0"))
