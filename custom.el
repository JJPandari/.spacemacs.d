;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-term-color-vector
   [unspecified "#1f2022" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#4f97d7" "#a3a3a3"])
 '(beacon-color "#c82829")
 '(evil-snipe-mode t)
 '(evil-want-Y-yank-to-eol t)
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(global-prettify-symbols-mode t)
 '(hl-sexp-background-color "#efebe9")
 '(jdee-db-active-breakpoint-face-colors (cons "#f0f0f0" "#4078f2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f0f0f0" "#50a14f"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f0f0f0" "#9ca0a4"))
 '(kill-ring-max 200)
 '(org-agenda-files nil)
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages
   (quote
    (edit-server lispy rjsx-mode base16-theme company-lsp lsp-javascript-typescript lsp-mode lsp-ui lsp-vue tern keyfreq doom-themes leuven-theme zenburn-theme symon string-inflection password-generator org-brain monokai-theme moe-theme ivy-purpose window-purpose imenu-list impatient-mode simple-httpd dash-functional evil-org evil-lion editorconfig browse-at-remote dash company-emacs-eclim eclim sunburn sunburn-theme atom-one-dark-theme company-flx reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl yapfify xo winum wgrep uuidgen powerline smex smeargle request pyvenv pytest pyenv-mode py-isort pug-mode pip-requirements spinner alert log4e gntp org-download nyan-mode mmm-mode markdown-toc markdown-mode magit-gitflow live-py-mode link-hint json-snatcher json-reformat multiple-cursors js2-mode ivy-hydra hydra hy-mode parent-mode hide-comnt projectile helm helm-core haml-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link fringe-helper git-gutter+ git-gutter fuzzy pos-tip flycheck pkg-info epl flx evil-visual-mark-mode evil-snipe evil-magit magit magit-popup git-commit with-editor evil-iedit-state iedit evil-exchange evil-ediff anzu evil goto-chg undo-tree highlight emmet-mode dumb-jump popup diminish cython-mode counsel swiper ivy web-completion-data company-anaconda company column-enforce-mode bind-key yasnippet packed async apropospriate-theme anaconda-mode pythonic f s all-the-icons-dired all-the-icons memoize font-lock+ ahk-mode avy helm-pt ws-butler window-numbering which-key web-mode web-beautify use-package toc-org spacemacs-theme spaceline solarized-theme smooth-scrolling smartparens slim-mode scss-mode sass-mode restart-emacs ranger rainbow-delimiters quelpa popwin phpunit phpcbf php-extras php-auto-yasnippets persp-mode pcre2el paradox page-break-lines org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets move-text macrostep linum-relative less-css-mode json-mode js2-refactor js-doc jade-mode info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-symbol highlight-parentheses highlight-numbers help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flyspell helm-flx helm-emmet helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag golden-ratio gnuplot git-gutter-fringe git-gutter-fringe+ flycheck-pos-tip flx-ido fill-column-indicator expand-region exec-path-from-shell evil-visualstar evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-multiedit evil-matchit evil-anzu eval-sexp-fu elisp-slime-nav drupal-mode diff-hl company-web company-tern company-statistics company-quickhelp color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clean-aindent-mode buffer-move bracketed-paste bind-map auto-yasnippet auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(paradox-github-token t)
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(quack-programs
   (quote
    ("mit-scheme --heap 512" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "mzscheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi")))
 '(ranger-override-dired t)
 '(ranger-override-dired-mode t)
 '(safe-local-variable-values
   (quote
    ((eval font-lock-add-keywords nil
           (\`
            (((\,
               (concat "("
                       (regexp-opt
                        (quote
                         ("sp-do-move-op" "sp-do-move-cl" "sp-do-put-op" "sp-do-put-cl" "sp-do-del-op" "sp-do-del-cl"))
                        t)
                       "\\_>"))
              1
              (quote font-lock-variable-name-face))))))))
 '(spacemacs-theme-custom-colors
   (quote
    ((base . "#24292e")
     (keyword . "#A626A4")
     (str . "#50A14F")
     (const . "#986801")
     (bg1 . "#FAFAFA")
     (bg2 . "#E5E5E5")
     (bg3 . "#CECECE")
     (bg4 . "#AAA"))))
 '(which-func-non-auto-modes (quote (web-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-dired-dir-face ((t (:foreground "#839496"))))
 '(lsp-face-highlight-read ((t (:background "peachpuff"))))
 '(lsp-face-highlight-textual ((t (:background "gold"))))
 '(lsp-face-highlight-write ((t (:background "lawn green"))))
 '(rjsx-tag ((t (:inherit success))))
 '(web-mode-constant-face ((t (:inherit font-lock-keyword-face)))))
