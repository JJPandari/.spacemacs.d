;; general keybindings

(global-set-key (kbd "C-;") 'insert-or-remove-trailing-semi)
(global-set-key (kbd "C-,") 'insert-or-remove-trailing-comma)
(define-key evil-normal-state-map (kbd "z u") #'jjpandari/move-line-up)
(define-key evil-normal-state-map (kbd "z d") #'jjpandari/move-line-down)
