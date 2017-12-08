;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(beacon-color "#c82829")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-color "#eee8d5" t)
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(global-prettify-symbols-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-sexp-background-color "#efebe9")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (doom-themes leuven-theme zenburn-theme symon string-inflection password-generator org-brain monokai-theme moe-theme ivy-purpose window-purpose imenu-list impatient-mode simple-httpd dash-functional evil-org evil-lion editorconfig browse-at-remote dash company-emacs-eclim eclim sunburn sunburn-theme atom-one-dark-theme company-flx reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl yapfify xo winum wgrep uuidgen powerline smex smeargle request pyvenv pytest pyenv-mode py-isort pug-mode pip-requirements spinner alert log4e gntp org-download nyan-mode mmm-mode markdown-toc markdown-mode magit-gitflow live-py-mode link-hint json-snatcher json-reformat multiple-cursors js2-mode ivy-hydra hydra hy-mode parent-mode hide-comnt projectile helm helm-core haml-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link fringe-helper git-gutter+ git-gutter fuzzy pos-tip flycheck pkg-info epl flx evil-visual-mark-mode evil-snipe evil-magit magit magit-popup git-commit with-editor evil-iedit-state iedit evil-exchange evil-ediff anzu evil goto-chg undo-tree highlight emmet-mode dumb-jump popup diminish cython-mode counsel swiper ivy web-completion-data company-anaconda company column-enforce-mode bind-key yasnippet packed async apropospriate-theme anaconda-mode pythonic f s all-the-icons-dired all-the-icons memoize font-lock+ ahk-mode avy helm-pt ws-butler window-numbering which-key web-mode web-beautify use-package toc-org spacemacs-theme spaceline solarized-theme smooth-scrolling smartparens slim-mode scss-mode sass-mode restart-emacs ranger rainbow-delimiters quelpa popwin phpunit phpcbf php-extras php-auto-yasnippets persp-mode pcre2el paradox page-break-lines org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets move-text macrostep linum-relative less-css-mode json-mode js2-refactor js-doc jade-mode info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-symbol highlight-parentheses highlight-numbers help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flyspell helm-flx helm-emmet helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag golden-ratio gnuplot git-gutter-fringe git-gutter-fringe+ flycheck-pos-tip flx-ido fill-column-indicator expand-region exec-path-from-shell evil-visualstar evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-multiedit evil-matchit evil-anzu eval-sexp-fu elisp-slime-nav drupal-mode diff-hl company-web company-tern company-statistics company-quickhelp color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clean-aindent-mode buffer-move bracketed-paste bind-map auto-yasnippet auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(paradox-github-token t)
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(quack-programs
   (quote
    ("mit-scheme --heap 512" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "mzscheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi")))
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
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
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
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(which-func-non-auto-modes (quote (web-mode)))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-dired-dir-face ((t (:foreground "#839496"))))
 '(web-mode-constant-face ((t (:inherit font-lock-keyword-face)))))
