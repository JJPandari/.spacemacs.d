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
   [unspecified "#1f2022" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#4f97d7" "#a3a3a3"] t)
 '(beacon-color "#c82829")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(evil-snipe-mode t)
 '(evil-want-Y-yank-to-eol t)
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(global-prettify-symbols-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-sexp-background-color "#efebe9")
 '(jdee-db-active-breakpoint-face-colors (cons "#f0f0f0" "#4078f2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f0f0f0" "#50a14f"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f0f0f0" "#9ca0a4"))
 '(kill-ring-max 200)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files nil)
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages
   (quote
    (flycheck-posframe company-childframe ivy-posframe youdao-dictionary coffee-mode ob-coffeescript yasnippet-snippets spaceline-all-the-icons pippel pipenv overseer nameless lsp-python ivy-yasnippet ivy-xref importmagic epc ctable concurrent deferred evil-cleverparens paredit counsel-css centered-cursor-mode dotenv-mode org-mime typescript-mode zoutline eyebrowse evil-goggles magit-svn ghub json-navigator hierarchy helm-gtags ggtags counsel-gtags company-lua lua-mode yaml-mode edit-server lispy rjsx-mode base16-theme company-lsp lsp-javascript-typescript lsp-mode lsp-ui lsp-vue tern keyfreq doom-themes leuven-theme zenburn-theme symon string-inflection password-generator org-brain monokai-theme moe-theme ivy-purpose window-purpose imenu-list impatient-mode simple-httpd dash-functional evil-org evil-lion editorconfig browse-at-remote dash company-emacs-eclim eclim sunburn sunburn-theme atom-one-dark-theme company-flx reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl yapfify xo winum wgrep uuidgen powerline smex smeargle request pyvenv pytest pyenv-mode py-isort pug-mode pip-requirements spinner alert log4e gntp org-download nyan-mode mmm-mode markdown-toc markdown-mode magit-gitflow live-py-mode link-hint json-snatcher json-reformat multiple-cursors js2-mode ivy-hydra hydra hy-mode parent-mode hide-comnt projectile helm helm-core haml-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link fringe-helper git-gutter+ git-gutter fuzzy pos-tip flycheck pkg-info epl flx evil-visual-mark-mode evil-snipe evil-magit magit magit-popup git-commit with-editor evil-iedit-state iedit evil-exchange evil-ediff anzu evil goto-chg undo-tree highlight emmet-mode dumb-jump popup diminish cython-mode counsel swiper ivy web-completion-data company-anaconda company column-enforce-mode bind-key yasnippet packed async apropospriate-theme anaconda-mode pythonic f s all-the-icons-dired all-the-icons memoize font-lock+ ahk-mode avy helm-pt ws-butler window-numbering which-key web-mode web-beautify use-package toc-org spacemacs-theme spaceline solarized-theme smooth-scrolling smartparens slim-mode scss-mode sass-mode restart-emacs ranger rainbow-delimiters quelpa popwin phpunit phpcbf php-extras php-auto-yasnippets persp-mode pcre2el paradox page-break-lines org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets move-text macrostep linum-relative less-css-mode json-mode js2-refactor js-doc jade-mode info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-symbol highlight-parentheses highlight-numbers help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flyspell helm-flx helm-emmet helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag golden-ratio gnuplot git-gutter-fringe git-gutter-fringe+ flycheck-pos-tip flx-ido fill-column-indicator expand-region exec-path-from-shell evil-visualstar evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-multiedit evil-matchit evil-anzu eval-sexp-fu elisp-slime-nav drupal-mode diff-hl company-web company-tern company-statistics company-quickhelp color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clean-aindent-mode buffer-move bracketed-paste bind-map auto-yasnippet auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(paradox-github-token t)
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
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
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
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
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background-mode nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(which-func-non-auto-modes (quote (web-mode)))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 4096)) (:foreground "#5f5f5f" :background "#fdfde7")) (((class color) (min-colors 256)) (:foreground "#5f5f5f" :background "#fdfde7")) (((class color) (min-colors 89)) (:foreground "#5f5f5f" :background "#fdfde7"))))
 '(all-the-icons-dired-dir-face ((t (:foreground "#839496"))))
 '(ivy-posframe ((t (:inherit hl-line))))
 '(lsp-face-highlight-read ((t (:background "peachpuff"))))
 '(lsp-face-highlight-textual ((t (:background "gold"))))
 '(lsp-face-highlight-write ((t (:background "lawn green"))))
 '(rjsx-tag ((t (:inherit success))))
 '(variable-pitch ((t (:family "Source Han Sans CN Regular"))))
 '(web-mode-constant-face ((t (:inherit font-lock-keyword-face)))))
