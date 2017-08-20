;;; packages.el --- jjpandari layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author:  <JJPandari>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `jjpandari-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `jjpandari/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `jjpandari/pre-init-PACKAGE' and/or
;;   `jjpandari/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst jjpandari-packages
  '(
    evil-multiedit
    counsel
    ;; indium

    ;; nyan-mode
    ;; all-the-icons-ivy
    )
  "The list of Lisp packages required by the jjpandari layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun jjpandari/init-evil-multiedit ()
  (use-package evil-multiedit
    :init
    ;; Ex command that allows you to invoke evil-multiedit with a regular expression, e.g.
    (evil-ex-define-cmd "ie[dit]" 'evil-multiedit-ex-match)
    :config
    (define-key evil-normal-state-map "R" 'evil-multiedit-match-all)
    (define-key evil-visual-state-map "R" 'evil-multiedit-match-all)
    (define-key evil-normal-state-map (kbd "C-n") 'evil-multiedit-match-symbol-and-next)
    (define-key evil-visual-state-map (kbd "C-n") 'evil-multiedit-match-symbol-and-next)
    (define-key evil-normal-state-map (kbd "C-p") 'evil-multiedit-match-symbol-and-prev)
    (define-key evil-visual-state-map (kbd "C-p") 'evil-multiedit-match-symbol-and-prev)
    (define-key evil-visual-state-map (kbd "C-M-D") 'evil-multiedit-restore)
    (define-key evil-multiedit-state-map (kbd "RET") 'evil-multiedit-toggle-or-restrict-region)
    (define-key evil-multiedit-state-map (kbd "<return>") 'evil-multiedit-toggle-or-restrict-region)
    ;; (define-key evil-motion-state-map (kbd "RET") 'evil-multiedit-toggle-or-restrict-region)
    ;; (define-key evil-multiedit-state-map (kbd "M-n") 'evil-multiedit-next)
    ;; (define-key evil-multiedit-state-map (kbd "M-p") 'evil-multiedit-prev)
    ;; (define-key evil-multiedit-insert-state-map (kbd "M-n") 'evil-multiedit-next)
    ;; (define-key evil-multiedit-insert-state-map (kbd "M-p") 'evil-multiedit-prev)
    ))

(defun jjpandari/post-init-counsel ()
  (use-package counsel
    :init
    (setq
     ivy-virtual-abbreviate 'full
     ivy-re-builders-alist '((t . ivy--regex-plus))
     )
    :config
    (defun jjpandari/open-project-file ()
      (interactive)
      (cond
       ((locate-dominating-file default-directory ".git") (counsel-git))
       ;; ((projectile-project-p) (projectile-find-file))
       (t (counsel-find-file))))

    ;; https://sam217pa.github.io/2016/09/13/from-helm-to-ivy/
    (define-key evil-normal-state-map (kbd "<return>") 'ivy-switch-buffer)
    ;; (spacemacs/set-leader-keys "bb" 'ivy-switch-buffer)
    ;; (spacemacs/set-leader-keys "fr" 'counsel-recentf)
    (spacemacs/set-leader-keys "pf" 'jjpandari/open-project-file)
    (spacemacs/set-leader-keys "sg" 'counsel-git-grep)
    ;; (spacemacs/set-leader-keys "ss" 'swiper)
    ;; (spacemacs/set-leader-keys "ry" 'counsel-yank-pop)
    ;; (spacemacs/set-leader-keys "Ts" 'counsel-load-theme)
    ;; (spacemacs/set-leader-keys "sj" 'counsel-imenu)
    ;; (spacemacs/set-leader-keys "sb" 'swiper-all)
    (dolist (key-map
      (list ivy-mode-map ivy-switch-buffer-map
        counsel-describe-map counsel-find-file-map counsel-git-grep-map counsel-mode-map
        swiper-map swiper-all-map))
      (define-key key-map (kbd "M-d") #'backward-word)
      (define-key key-map (kbd "M-b") #'kill-word)
      (define-key key-map (kbd "C-w") #'backward-kill-word)
      (define-key key-map (kbd "C-d") #'backward-char)
      (define-key key-map (kbd "C-b") #'delete-char)
      )
    ))

(defun jjpandari/init-indium ()
  (use-package indium
    ))

(defun jjpandari/init-nyan-mode ()
  (use-package nyan-mode
    :config
    (nyan-mode 1)))

(defun jjpandari/init-all-the-icons-ivy ()
  (use-package all-the-icons-ivy
    :config
    (all-the-icons-ivy-setup)))

;;; packages.el ends here
