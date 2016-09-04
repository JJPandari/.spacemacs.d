;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     emacs-lisp
     ;; git
     ;; markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control

     smex
     ranger
     javascript
     html
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(evil-multiedit
                                      helm-emmet
                                      tide
                                      evil-ediff
                                      helm-smex
                                      color-theme-sanityinc-tomorrow
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(
                                    evil-iedit-state
                                    auto-highlight-symbol
                                    evil-mc
                                    evil-args
                                    evil-exchange
                                    evil-unimpaired
                                    evil-indent-plus
                                    centered-buffer-mode
                                    volatile-highlights
                                    holy-mode
                                    skewer-mode
                                    highlight-indentation
                                    vi-tilde-fringe
                                    open-junk-file
                                    coffee-mode
                                    evil-tutor
                                    eyebrowse
                                    hl-anything
                                    srefactor
                                    livid-mode
                                    alert
                                    ;; disable it for lispy-mode
                                    ;;https://github.com/abo-abo/lispy/issues/137
                                    evil-escape
                                    ;;At first, I should disable hydra in zilongshanren layer and install clj-refactor, after it is installed.
                                    ;; I could re-enable it again in zilongshanren layer.
                                    ;; clj-refactor
                                    ;;remove from spacemacs distribution
                                    neotree
                                    leuven-theme
                                    gh-md
                                    evil-lisp-state
                                    spray
                                    doc-view
                                    lorem-ipsum
                                    ac-ispell
                                    ace-jump-mode
                                    auto-complete
                                    auto-dictionary
                                    clang-format
                                    define-word
                                    google-translate
                                    disaster
                                    epic
                                    fancy-battery
                                    orgit
                                    orglue
                                    spacemacs-theme
                                    spinner
                                    tagedit
									flyspell
                                    )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages nil))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         sanityinc-tomorrow-eighties
                         solarized-light
                         apropospriate-light
                         sanityinc-tomorrow-day
                         spacemacs-light
                         zenburn
                         sanityinc-solarized-light
                         spacemacs-dark
                         solarized-dark
                         leuven
                         monokai
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers `relative
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  (global-company-mode t)
  (golden-ratio-mode t)
  (global-auto-revert-mode t)
  (add-hook 'prog-mode-hook 'smartparens-mode)
  (add-hook 'prog-mode-hook 'diff-hl-mode)
  ;; (add-hook 'prog-mode-hook
  ;;           (lambda () (modify-syntax-entry ?_ "w")))
  (setq
   aya-persist-snippets-dir "~/.spacemacs.d/snippets"
   golden-ratio-auto-scale t
   initial-frame-alist (quote ((fullscreen . maximized)))
   auto-save-default nil
   org-src-fontify-natively t
   org-agenda-files '("~/org")
   auto-mode-alist (append
                    '(
                      ;; ("\\.html\\'" . web-mode)
                      )
                    auto-mode-alist)
   ;; auto-save-visited-file-name t
   ;; auto-save-interval 300
   ranger-override-dired t
   )
  (delete-selection-mode t)
  (setq-default
   truncate-lines t
   tab-width 4
   evil-move-beyond-eol nil
   )

  (with-eval-after-load 'evil
    (defalias #'forward-evil-word #'forward-evil-symbol))
  (global-set-key (kbd "C-j") 'evil-scroll-line-down)
  (global-set-key (kbd "C-k") 'evil-scroll-line-up)
  (global-set-key (kbd "C-s") 'save-buffer)
  (global-set-key (kbd "M-x") 'helm-smex)
  (define-key evil-normal-state-map (kbd "DEL") 'evil-repeat-find-char-reverse)
  (define-key evil-normal-state-map (kbd "+") 'spacemacs/evil-numbers-increase)
  (define-key evil-normal-state-map (kbd "-") 'spacemacs/evil-numbers-decrease)
  (define-key evil-normal-state-map (kbd "<return>") 'helm-mini)
  (define-key evil-normal-state-map (kbd "C-a") 'evil-first-non-blank)
  (define-key evil-normal-state-map (kbd "C-e") 'evil-end-of-line)
  (define-key evil-normal-state-map (kbd "g s") 'evil-surround-region)
  ;; (define-key evil-insert-state-map (kbd "TAB") nil)
  ;; (define-key evil-insert-state-map (kbd "<tab>") nil)
  (define-key evil-insert-state-map (kbd "C-d") 'evil-open-below)
  (define-key evil-insert-state-map (kbd "C-y") 'evil-open-above)
  (define-key evil-insert-state-map (kbd "C-n") 'next-line)
  (define-key evil-insert-state-map (kbd "C-p") 'previous-line)
  (define-key evil-insert-state-map (kbd "C-a") 'beginning-of-line-text)
  (define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)
  (define-key evil-insert-state-map (kbd "C-k") 'evil-scroll-line-up)
  (define-key evil-insert-state-map (kbd "C-l") 'hippie-expand)
  (define-key evil-insert-state-map (kbd "C-'") 'emmet-expand-yas)
  (defun insert-curly-and-go-inside ()
    "Insert {}.
Threat is as function body when from endline before )"
    (interactive)
    (insert " {\n\n}")
    (indent-according-to-mode)
    (forward-line -1)
    (indent-according-to-mode)
    )
  (evil-define-key 'insert prog-mode-map (kbd "<C-return>") 'insert-curly-and-go-inside)
  (define-key evil-insert-state-map (kbd "<C-return>") 'insert-curly-and-go-inside)
  (defun insert-semi-at-eol ()
    "Insert semicolon at end of line."
    (interactive)
    (save-excursion
      (end-of-line)
      (insert ";")
      )
    )
  (define-key evil-insert-state-map (kbd "C-;") 'insert-semi-at-eol)
  (with-eval-after-load 'helm
    (define-key helm-buffer-map (kbd "C-d") 'helm-buffer-run-kill-buffers))

  ;; (setq-default dotspacemacs-configuration-layers '(
  ;;                                                   (auto-completion :variables
  ;;                                                                    auto-completion-tab-key-behavior complete
  ;;                                                                    ))

  (put 'dired-find-alternate-file 'disabled nil)
  (require 'dired)
  (with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

  (with-eval-after-load 'company
    (define-key company-active-map (kbd "M-n") nil)
    (define-key company-active-map (kbd "M-p") nil)
    (define-key company-active-map (kbd "C-n") #'company-select-next)
    (define-key company-active-map (kbd "C-p") #'company-select-previous)
    (define-key company-active-map (kbd "RET") nil)
    (define-key company-active-map (kbd "<return>") nil)
    (define-key company-active-map (kbd "TAB") #'company-complete-selection)
    (define-key company-active-map (kbd "<tab>") #'company-complete-selection)
    )

  ;; (with-eval-after-load 'flyspell
  ;;   (define-key flyspell-mode-map (kbd "C-:") #'flyspell-auto-correct-word)
  ;;   )

  (with-eval-after-load 'emmet-mode
    (define-key emmet-mode-keymap (kbd "C-j") #'evil-scroll-line-down)
    )
  ;; todo company&hippie

  (require 'evil-multiedit)
  (define-key evil-normal-state-map "R" 'evil-multiedit-match-all)
  (define-key evil-visual-state-map "R" 'evil-multiedit-match-all)
  (define-key evil-normal-state-map (kbd "C-n") 'evil-multiedit-match-and-next)
  (define-key evil-visual-state-map (kbd "C-n") 'evil-multiedit-match-and-next)
  (define-key evil-normal-state-map (kbd "C-p") 'evil-multiedit-match-and-prev)
  (define-key evil-visual-state-map (kbd "C-p") 'evil-multiedit-match-and-prev)
  ;; `evil-multiedit-match-symbol-and-next` (or prev).
  (define-key evil-visual-state-map (kbd "C-M-D") 'evil-multiedit-restore)
  (define-key evil-multiedit-state-map (kbd "RET") 'evil-multiedit-toggle-or-restrict-region)
  (define-key evil-motion-state-map (kbd "RET") 'evil-multiedit-toggle-or-restrict-region)
  (define-key evil-multiedit-state-map (kbd "C-S-n") 'evil-multiedit-next)
  (define-key evil-multiedit-state-map (kbd "C-S-p") 'evil-multiedit-prev)
  (define-key evil-multiedit-insert-state-map (kbd "C-S-n") 'evil-multiedit-next)
  (define-key evil-multiedit-insert-state-map (kbd "C-S-p") 'evil-multiedit-prev)

  ;; Ex command that allows you to invoke evil-multiedit with a regular expression, e.g.
  (evil-ex-define-cmd "ie[dit]" 'evil-multiedit-ex-match)

  (defun check-expansion ()
    (save-excursion
      (if (looking-at "\\_>") t
        (backward-char 1)
        (if (looking-at "\\.") t
          (backward-char 1)
          (if (looking-at "->") t nil)))))

  (defun do-yas-expand ()
    (let ((yas-fallback-behavior 'return-nil))
      (yas-expand)))

  (defun tab-indent-or-complete ()
    (interactive)
    (cond
     ((minibufferp)
      (minibuffer-complete))
     (t
      ;; (indent-for-tab-command)
      (if (and (or (not yas-minor-mode)
                   (null (do-yas-expand)))
               (check-expansion))
          (progn
            (company-manual-begin)
            (if (null company-candidates)
                (progn
                  (company-abort)
                  (hippie-expand nil)
                  ;; (indent-for-tab-command)
                  )))
        ))))

  ;; (defun tab-complete-or-next-field ()
  ;;   (interactive)
  ;;   (if (or (not yas-minor-mode)
  ;;           (null (do-yas-expand)))
  ;;       (if company-candidates
  ;;           (company-complete-selection)
  ;;         (if (check-expansion)
  ;;             (progn
  ;;               (company-manual-begin)
  ;;               (if (null company-candidates)
  ;;                   (progn
  ;;                     (company-abort)
  ;;                     (yas-next-field))))
  ;;           (yas-next-field)))))

  (defun expand-snippet-or-complete-selection ()
    (interactive)
    (if (or (not yas-minor-mode)
            (null (do-yas-expand))
            (company-abort))
        (company-complete-selection)))

  (defun abort-company-or-yas ()
    (interactive)
    (if (null company-candidates)
        (yas-abort-snippet)
      (company-abort)))

  (define-key evil-insert-state-map [tab] 'tab-indent-or-complete)
  (define-key evil-insert-state-map (kbd "TAB") 'tab-indent-or-complete)
  ;; (global-set-key [(control return)] 'company-complete-common)

  (define-key company-active-map [tab] 'expand-snippet-or-complete-selection)
  (define-key company-active-map (kbd "TAB") 'expand-snippet-or-complete-selection)

  (with-eval-after-load 'yasnippet
    ;; (define-key yas-keymap [tab] 'tab-complete-or-next-field)
    ;; (define-key yas-keymap (kbd "TAB") 'tab-complete-or-next-field)
    (define-key yas-keymap (kbd "TAB") nil)
    (define-key yas-keymap (kbd "<tab>") nil)
    (define-key yas-keymap [(control tab)] 'yas-next-field)
    (define-key yas-keymap (kbd "RET") #'yas-next-field)
    (define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)
    )

  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Microsoft YaHei" :size 18)))

  (defun browse-file-directory ()
    "Open the current file's directory however the OS would."
    (interactive)
    (if default-directory
        (browse-url-of-file (expand-file-name default-directory))
      (error "No `default-directory' to open")))

  (add-hook 'js2-mode-hook 'js2-refactor-mode)

  (with-eval-after-load 'org
    (evil-define-key 'insert org-mode-map (kbd "<C-return>") 'org-insert-heading-respect-content)
    (evil-define-key 'normal org-mode-map (kbd "RET") 'helm-mini)
    (evil-define-key 'insert org-mode-map (kbd "TAB") 'tab-indent-or-complete)
    (evil-define-key 'insert org-mode-map (kbd "C-TAB") 'org-cycle)
    )

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (helm-pt ws-butler window-numbering which-key web-mode web-beautify use-package toc-org spacemacs-theme spaceline solarized-theme smooth-scrolling smartparens slim-mode scss-mode sass-mode restart-emacs ranger rainbow-delimiters quelpa popwin phpunit phpcbf php-extras php-auto-yasnippets persp-mode pcre2el paradox page-break-lines org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets move-text macrostep linum-relative less-css-mode json-mode js2-refactor js-doc jade-mode info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-symbol highlight-parentheses highlight-numbers help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flyspell helm-flx helm-emmet helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag golden-ratio gnuplot git-gutter-fringe git-gutter-fringe+ flycheck-pos-tip flx-ido fill-column-indicator expand-region exec-path-from-shell evil-visualstar evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-multiedit evil-matchit evil-anzu eval-sexp-fu elisp-slime-nav drupal-mode diff-hl company-web company-tern company-statistics company-quickhelp color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clean-aindent-mode buffer-move bracketed-paste bind-map auto-yasnippet auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
