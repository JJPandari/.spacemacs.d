;; general keybindings

(global-set-key (kbd "C-h p") 'describe-package)
(global-set-key (kbd "C-;") 'insert-or-remove-trailing-semi)
(global-set-key (kbd "C-,") 'insert-or-remove-trailing-comma)
(define-key evil-normal-state-map (kbd "z k") #'jjpandari/move-line-up)
(define-key evil-normal-state-map (kbd "z j") #'jjpandari/move-line-down)
