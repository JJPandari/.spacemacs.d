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
    evil-snipe
    evil-multiedit
    ivy
    counsel
    rjsx-mode

    ;; company-flx
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

(defun jjpandari/init-evil-snipe ()
  (use-package evil-snipe
    :init
    (setq evil-snipe-repeat-keys nil
          evil-snipe-enable-highlight nil)
    :config
    (add-hook 'prog-mode-hook '(lambda ()
                                 (evil-snipe-local-mode 1)
                                 (evil-snipe-override-local-mode 1)
                                 ))

    (evil-define-key 'normal evil-snipe-local-mode-map (kbd "s") #'evil-substitute)
    (evil-define-key 'normal evil-snipe-local-mode-map (kbd "S") #'evil-change-whole-line)

    (evil-define-key 'normal evil-snipe-local-mode-map (kbd "g s") #'evil-snipe-s)
    (evil-define-key 'normal evil-snipe-local-mode-map (kbd "g S") #'evil-snipe-S)
    (evil-define-key 'normal evil-snipe-local-mode-map (kbd "g t") #'evil-snipe-x)
    (evil-define-key 'normal evil-snipe-local-mode-map (kbd "g T") #'evil-snipe-X)
    ;; (evil-define-key 'visual evil-snipe-local-mode-map "z" #'evil-snipe-s)
    ;; (evil-define-key 'visual evil-snipe-local-mode-map "Z" #'evil-snipe-S)
    ;; (evil-define-key 'visual evil-snipe-local-mode-map "x" #'evil-snipe-x)
    ;; (evil-define-key 'visual evil-snipe-local-mode-map "X" #'evil-snipe-X)
    (define-key evil-normal-state-map (kbd "DEL") 'evil-snipe-repeat-reverse)
    ))

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

(defun jjpandari/post-init-ivy ()
  (use-package ivy
    :init
    (setq
     ivy-virtual-abbreviate 'full
     ivy-initial-inputs-alist nil
     ivy-re-builders-alist '((t . ivy--regex-plus))
     )
    :config
    ))

(defun jjpandari/post-init-counsel ()
  (use-package counsel
    :config
    (defun jjpandari/open-project-file (&optional file-name)
      (interactive)
      (cond
       ((locate-dominating-file default-directory ".git") (counsel-git file-name))
       ;; ((projectile-project-p) (projectile-find-file))
       (t (counsel-find-file file-name))))

    (defmacro jjpandari/open-project-file-auto-symbol ()
      `(lambda () (interactive) (jjpandari/open-project-file (thing-at-point 'symbol))))

    ;; https://sam217pa.github.io/2016/09/13/from-helm-to-ivy/
    (define-key evil-normal-state-map (kbd "<return>") 'ivy-switch-buffer)
    ;; (spacemacs/set-leader-keys "bb" 'ivy-switch-buffer)
    ;; (spacemacs/set-leader-keys "fr" 'counsel-recentf)
    (spacemacs/set-leader-keys "pf" 'jjpandari/open-project-file)
    (spacemacs/set-leader-keys "pF" 'jjpandari/open-project-file-auto-symbol)
    (spacemacs/set-leader-keys "og" 'counsel-git-grep)
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

(defun jjpandari/init-rjsx-mode ()
  (use-package rjsx-mode
    :init
    (setq
     magic-mode-alist (append
                       '(("import\s+.+\s+from\s+['\"]react['\"]" . rjsx-mode))
                       magic-mode-alist))
    (add-hook
     'rjsx-mode-hook
     (lambda () (flycheck-mode 1)
       (evil-matchit-mode 1)
       (add-hook 'post-command-hook 'jjpandari/on-post-newline nil t)
       (setq imenu-create-index-function (lambda () (jjpandari/merge-imenu 'js2-mode-create-imenu-index)))
       (setq
        imenu-generic-expression
        '((nil "^  \\(state\\) = {" 1)))
       ))
    :config
    (evil-define-key 'insert rjsx-mode-map (kbd "C-b") #'rjsx-delete-creates-full-tag)
    (modify-syntax-entry ?_ "w" rjsx-mode-syntax-table)

    (defun jjpandari/import-antd-form-function ()
      "import the function at point as an antd form util function"
      (interactive)
      (let ((fun (thing-at-point 'symbol)))
        (evil-open-above 1)
        (insert (format "const { %s } = this.props.form;" fun))
        (evil-normal-state)))

    ;; major leader not inherited from js2-mode / js2-jsx-mode ?
    (spacemacs/set-leader-keys-for-major-mode 'rjsx-mode
        "r3i" 'js2r-ternary-to-if
        "rag" 'js2r-add-to-globals-annotation
        "rao" 'js2r-arguments-to-object
        "rba" 'js2r-forward-barf
        "rca" 'js2r-contract-array
        "rco" 'js2r-contract-object
        "rcu" 'js2r-contract-function
        "rea" 'js2r-expand-array
        "ref" 'js2r-extract-function
        "rem" 'js2r-extract-method
        "reo" 'js2r-expand-object
        "reu" 'js2r-expand-function
        "rev" 'js2r-extract-var
        "rig" 'js2r-inject-global-in-iife
        "rip" 'js2r-introduce-parameter
        "riv" 'js2r-inline-var
        "rlp" 'js2r-localize-parameter
        "rlt" 'js2r-log-this
        "rrv" 'js2r-rename-var
        "rsl" 'js2r-forward-slurp
        "rss" 'js2r-split-string
        "rsv" 'js2r-split-var-declaration
        "rtf" 'js2r-toggle-function-expression-and-declaration
        "ruw" 'js2r-unwrap
        "rvt" 'js2r-var-to-this
        "rwi" 'js2r-wrap-buffer-in-iife
        "rwl" 'js2r-wrap-in-for-loop
        "k" 'js2r-kill
        "xmj" 'js2r-move-line-down
        "xmk" 'js2r-move-line-up
        "t" 'rjsx-rename-tag-at-point
        "a" 'jjpandari/import-antd-form-function)
    ))

;; -----unused-----

(defun jjpandari/init-indium ()
  (use-package indium
    ))

(defun jjpandari/init-company-flx ()
  (use-package company-flx
    :init
    (with-eval-after-load 'company
      (company-flx-mode 1))))

(defun jjpandari/init-nyan-mode ()
  (use-package nyan-mode
    :config
    (nyan-mode 1)))

(defun jjpandari/init-all-the-icons-ivy ()
  (use-package all-the-icons-ivy
    :config
    (all-the-icons-ivy-setup)))

;;; packages.el ends here
