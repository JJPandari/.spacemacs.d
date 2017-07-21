;;; -*- lexical-binding: t; -*-
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
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control

     smex
     ranger
     gtags
     php
     javascript
     html
     autohotkey
     python

     jjpandari
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ;; http://emacs.stackexchange.com/questions/26729/how-to-install-a-package-from-github-to-over-emacs-builtin-one-in-spacemacs
                                      (evil-multiedit :location (recipe :fetcher github :repo "hlissner/evil-multiedit"))
                                      evil-snipe
                                      helm-emmet
                                      ;; tide
                                      evil-ediff
                                      helm-smex
                                      color-theme-sanityinc-tomorrow
                                      solarized-theme
                                      apropospriate-theme
                                      nyan-mode
                                      ;; company-jedi
                                      ;; vue-mode
                                      xo
                                      all-the-icons
                                      all-the-icons-dired
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(
                                    smartparens
                                    ;; iedit
                                    ;; evil-iedit-state
                                    auto-highlight-symbol
                                    evil-mc
                                    evil-args
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
                                    company-tern
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
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
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
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         solarized-light
                         sanityinc-tomorrow-eighties
                         moe-light
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
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
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
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
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
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("pt" "ag" "ack" "grep")
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
  (require 'apropospriate-theme)
  (require 'solarized-theme)
  (require 'ranger)
  (require 'all-the-icons)

  (global-company-mode t)
  (golden-ratio-mode t)
  (global-auto-revert-mode t)
  (add-hook 'prog-mode-hook '(lambda () (electric-pair-mode 1)))
  (add-hook 'prog-mode-hook '(lambda () (which-function-mode 1)))
  (add-hook 'prog-mode-hook 'diff-hl-mode)
  (global-prettify-symbols-mode t)
  (evil-snipe-mode 1)
  (evil-snipe-override-mode 1)
  (add-hook 'inferior-scheme-mode '(lambda () (electric-pair-mode 1)))
  (global-auto-revert-mode 1)
  (setq
   aya-persist-snippets-dir "~/.spacemacs.d/snippets"
   golden-ratio-auto-scale t
   initial-frame-alist (quote ((fullscreen . maximized)))
   ;; auto-save-default nil
   org-src-fontify-natively t
   org-agenda-files '("~")
   auto-mode-alist (append
                    '(("\\.zsh\\'" . shell-script-mode)
                      ("\\.xtpl\\'" . web-mode)
                      ("\\.vue\\'" . web-mode)
                      ("\\.blade.php\\'" . web-mode)
                      )
                    auto-mode-alist)
   auto-save-visited-file-name t
   auto-save-interval 300
   ranger-override-dired t
   scheme-program-name "csi -:c"
   mmm-global-mode 'maybe
   js2-include-node-externs t
   evil-snipe-repeat-keys nil
   )
  (delete-selection-mode t)
  (setq-default
   truncate-lines t
   ;; indent-tabs-mode t
   tab-width 4
   evil-move-beyond-eol nil
   )

  ;; http://emacs.stackexchange.com/a/20717/12854
  (with-eval-after-load 'evil
    (defalias #'forward-evil-word #'forward-evil-symbol))
  (global-set-key (kbd "C-s") 'save-buffer)
  (global-set-key (kbd "M-x") 'helm-smex)
  (define-key evil-normal-state-map (kbd "DEL") 'evil-snipe-repeat-reverse)
  (define-key evil-normal-state-map (kbd "+") 'spacemacs/evil-numbers-transient-state/evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "-") 'spacemacs/evil-numbers-transient-state/evil-numbers/dec-at-pt)
  (define-key evil-normal-state-map (kbd "<return>") 'helm-mini)
  (define-key evil-normal-state-map (kbd "C-a") 'evil-first-non-blank)
  (define-key evil-normal-state-map (kbd "C-e") 'evil-end-of-line)
  (define-key evil-visual-state-map (kbd "C-a") 'evil-first-non-blank)
  (define-key evil-visual-state-map (kbd "C-e") 'evil-end-of-line)
  (define-key evil-motion-state-map (kbd "C-e") 'move-end-of-line)
  (define-key evil-normal-state-map (kbd "'") 'evil-goto-mark)
  (define-key evil-normal-state-map (kbd "SPC '") 'evil-use-register)
  (define-key evil-visual-state-map (kbd "SPC '") 'evil-use-register)
  (evil-define-key 'normal js2-mode-map (kbd "g d") #'js2-jump-to-definition)
  (define-key evil-insert-state-map (kbd "C-t") 'evil-execute-in-normal-state)
  (define-key evil-insert-state-map (kbd "C-b") 'delete-char)
  (define-key evil-insert-state-map (kbd "C-o") 'evil-open-below)
  (define-key evil-insert-state-map (kbd "C-y") 'evil-open-above)
  (define-key evil-insert-state-map (kbd "C-d") 'backward-char)
  (define-key evil-insert-state-map (kbd "C-n") 'next-line)
  (define-key evil-insert-state-map (kbd "C-p") 'previous-line)
  (define-key evil-insert-state-map (kbd "C-a") 'beginning-of-line-text)
  (define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)
  (define-key evil-normal-state-map (kbd "C-j") 'evil-scroll-line-down)
  (define-key evil-normal-state-map (kbd "C-k") 'evil-scroll-line-up)
  (define-key evil-insert-state-map (kbd "C-k") 'kill-line)
  (define-key evil-insert-state-map (kbd "C-.") (lambda () (interactive) (insert "    ") ))
  (define-key evil-insert-state-map (kbd "C-w") #'evil-delete-backward-word)
  (define-key evil-insert-state-map (kbd "C-v") #'evil-paste-from-register)
  (define-key evil-insert-state-map (kbd "M-d") #'backward-word)
  (define-key evil-insert-state-map (kbd "M-b") #'kill-word)
  (spacemacs/set-leader-keys "(" #'backward-up-list)
  (spacemacs/set-leader-keys ")" #'up-list)
  (spacemacs/set-leader-keys "SPC" 'evil-avy-goto-char-2)
  (define-key evil-normal-state-map (kbd "s") #'evil-substitute)
  (define-key evil-normal-state-map (kbd "S") #'evil-change-whole-line)
  (evil-define-key 'normal evil-snipe-mode-map (kbd "g s") #'evil-snipe-s)
  (evil-define-key 'normal evil-snipe-mode-map (kbd "g S") #'evil-snipe-S)
  (evil-define-key 'normal evil-snipe-mode-map (kbd "g t") #'evil-snipe-x)
  (evil-define-key 'normal evil-snipe-mode-map (kbd "g T") #'evil-snipe-X)
  (evil-define-key 'visual evil-snipe-mode-map "z" #'evil-snipe-s)
  (evil-define-key 'visual evil-snipe-mode-map "Z" #'evil-snipe-S)
  (evil-define-key 'visual evil-snipe-mode-map "x" #'evil-snipe-x)
  (evil-define-key 'visual evil-snipe-mode-map "X" #'evil-snipe-X)

  (define-key minibuffer-local-map (kbd "M-d") #'backward-word)
  (define-key minibuffer-local-map (kbd "M-b") #'kill-word)
  (define-key minibuffer-local-map (kbd "C-w") #'backward-kill-word)
  (define-key minibuffer-local-map (kbd "C-d") #'backward-char)
  (define-key minibuffer-local-map (kbd "C-b") #'delete-char)

  (evil-define-key 'insert js2-mode-map (kbd "C-l") #'emmet-expand-yas)
  (evil-define-key 'insert web-mode-map (kbd "C-l") #'emmet-expand-yas)

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

  (defun insert-semi-at-eol ()
    "Insert semicolon at end of line."
    (interactive)
    (save-excursion
      (end-of-line)
      (insert ";")
      )
    )
  (define-key evil-insert-state-map (kbd "C-;") 'insert-semi-at-eol)

  (defun jjpandari/evil-search-symbol-forward ()
    "Search forward for symbol under point."
    (interactive)
    (evil-search-word-forward 1 t)
    )
  (define-key evil-normal-state-map (kbd "*") 'jjpandari/evil-search-symbol-forward)
  (define-key evil-motion-state-map (kbd "*") 'jjpandari/evil-search-symbol-forward)

  (defun jjpandari/evil-search-symbol-backward ()
    "Search forward for symbol under point."
    (interactive)
    (evil-search-word-backward 1 t)
    )
  (define-key evil-normal-state-map (kbd "#") 'jjpandari/evil-search-symbol-backward)
  (define-key evil-motion-state-map (kbd "#") 'jjpandari/evil-search-symbol-backward)

  (with-eval-after-load 'helm
    (define-key helm-buffer-map (kbd "C-d") 'helm-buffer-run-kill-buffers)
    (define-key helm-map (kbd "C-w") 'backward-kill-word))

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
    (define-key company-active-map (kbd "C-n") #'company-complete-common-or-cycle)
    (define-key company-active-map (kbd "C-p") #'company-select-previous)
    (define-key company-active-map (kbd "RET") nil)
    (define-key company-active-map (kbd "<return>") nil)
    (define-key company-active-map (kbd "TAB") #'company-complete-selection)
    (define-key company-active-map (kbd "<tab>") #'company-complete-selection)
    (define-key company-active-map (kbd "C-l") nil)
    (define-key company-active-map (kbd "C-w") nil)
    )

  ;; (with-eval-after-load 'flyspell
  ;;   (define-key flyspell-mode-map (kbd "C-:") #'flyspell-auto-correct-word)
  ;;   )

  (with-eval-after-load 'web-mode
    (define-key web-mode-map (kbd "TAB") nil)
    (define-key web-mode-map (kbd "<tab>") nil)
    (evil-define-key 'insert web-mode-map (kbd "TAB") #'tab-indent-or-complete)
    (evil-define-key 'insert web-mode-map (kbd "<tab>") #'tab-indent-or-complete)
    )

  (with-eval-after-load 'emmet-mode
    (define-key emmet-mode-keymap (kbd "TAB") nil)
    (define-key emmet-mode-keymap (kbd "<tab>") nil)
    (evil-define-key 'insert emmet-mode-keymap (kbd "TAB") #'tab-indent-or-complete)
    (evil-define-key 'insert emmet-mode-keymap (kbd "<tab>") #'tab-indent-or-complete)
    (define-key emmet-mode-keymap (kbd "C-j") #'evil-scroll-line-down)
    )

  (require 'evil-multiedit)
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
  (define-key company-active-map (kbd "C-j") nil)
  (define-key company-active-map (kbd "C-k") nil)

  (with-eval-after-load 'yasnippet
    ;; (define-key yas-keymap [tab] 'tab-complete-or-next-field)
    ;; (define-key yas-keymap (kbd "TAB") 'tab-complete-or-next-field)
    (define-key yas-keymap (kbd "TAB") nil)
    (define-key yas-keymap (kbd "<tab>") nil)
    (define-key yas-keymap [(control tab)] 'yas-next-field)
    (define-key yas-keymap (kbd "RET") #'yas-next-field)
    (define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)
    (setq yas-installed-snippets-dir "")
    )

  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "思源黑体 Regular" :size 15)))

  ;; http://emacs.stackexchange.com/a/7745/12854
  (defun browse-file-directory ()
    "Open the current file's directory however the OS would."
    (interactive)
    (if default-directory
        (browse-url-of-file (expand-file-name default-directory))
      (error "No `default-directory' to open")))
  (spacemacs/set-leader-keys
    "od" 'browse-file-directory
    "or" 'helm-gtags-find-rtag)

  (add-hook 'php-mode-hook (lambda () (progn
                                        (electric-indent-local-mode -1)
                                        (modify-syntax-entry ?$ "\_" php-mode-syntax-table))))
  (add-hook 'python-mode-hook (lambda () (progn
                                           ;; (setq indent-tabs-mode t)
                                           ;; (add-to-list 'company-backends 'company-jedi)
                                           )))
  ;; (add-hook 'js2-mode-hook (lambda () (flycheck-select-checker 'standard)))
  (add-hook 'js2-mode-hook (lambda () (progn
                                    ;; (modify-syntax-entry ?_ "\_" js2-mode-syntax-table)
                                    ;; (modify-syntax-entry ?$ "\_" js2-mode-syntax-table)
                                    (flycheck-mode -1)
                                    (js2-refactor-mode 1))))

  (with-eval-after-load 'org
    (evil-define-key 'normal org-mode-map (kbd "RET") 'helm-mini)
    (evil-define-key 'insert org-mode-map (kbd "<C-return>") 'org-insert-heading-respect-content)
    ;; (evil-define-key 'insert org-mode-map (kbd "TAB") 'tab-indent-or-complete)
    ;; (evil-define-key 'insert org-mode-map (kbd "C-TAB") 'org-cycle)
    )

  (spaceline-toggle-hud-off)
  (spaceline-toggle-buffer-position-off)
  (spaceline-toggle-which-function-on)
  (nyan-mode 1)

  (evil-define-key 'insert c-mode-map (kbd "C-l") (lambda () (interactive) (insert "->")))
  (evil-define-key 'insert php-mode-map (kbd "C-l") (lambda () (interactive) (insert "->")))
  (evil-define-key 'insert php-mode-map (kbd "C-j") (lambda () (interactive) (insert " => ")))

  (defun evil-global-marker-p (char)
    "Whether CHAR denotes a global marker."
    (or (and (>= char ?a) (<= char ?z))
        (assq char (default-value 'evil-markers-alist))))

  (spacemacs/set-leader-keys "od" 'browse-file-directory)

  (spaceline-toggle-hud-off)
  (spaceline-toggle-buffer-position-off)

  (with-eval-after-load 'web-mode
    (setq
     web-mode-style-padding 0
     web-mode-script-padding 0
     web-mode-block-padding 0)
    (modify-syntax-entry ?' "\"" web-mode-syntax-table)
    (modify-syntax-entry ?` "\"" web-mode-syntax-table)
    (define-key web-mode-map (kbd "TAB") nil)
    (define-key web-mode-map (kbd "<tab>") nil)
    (evil-define-key 'insert web-mode-map (kbd "TAB") #'tab-indent-or-complete)
    (evil-define-key 'insert web-mode-map (kbd "<tab>") #'tab-indent-or-complete)
    )

  (with-eval-after-load 'emmet-mode
    (define-key emmet-mode-keymap (kbd "TAB") nil)
    (define-key emmet-mode-keymap (kbd "<tab>") nil)
    (evil-define-key 'insert emmet-mode-keymap (kbd "TAB") #'tab-indent-or-complete)
    (evil-define-key 'insert emmet-mode-keymap (kbd "<tab>") #'tab-indent-or-complete)
    (define-key emmet-mode-keymap (kbd "C-j") #'evil-scroll-line-down)
    )

  (defun evil-global-marker-p (char)
    "Whether CHAR denotes a global marker."
    (or (and (>= char ?a) (<= char ?z))
        (assq char (default-value 'evil-markers-alist))))

  (spacemacs/set-leader-keys "oe" (lambda () (interactive) (shell-command (concat "csi " buffer-file-name))))

  (server-start)

  (defun make-cd-for-terminal ()
    "make a cd command for terminal, targeting current buffer file's dir"
    (interactive)
    (let ((file-name (or (buffer-file-name) list-buffers-directory)))
      (if file-name
          (message (kill-new (format "cd %s\n" (file-name-directory file-name))))
        (error "Buffer not visiting a file"))))

  (defun open-emacs-window ()
    "switch to emacs frame"
    (select-frame-set-input-focus (selected-frame)))

  (spacemacs/set-leader-keys "oy" (lambda () (interactive) (make-cd-for-terminal)))

  (add-hook 'ranger-mode-hook 'all-the-icons-dired-mode)

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(fci-rule-color "#eee8d5" t)
 '(global-prettify-symbols-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files
   (quote
    ("~/notes/org-note.org" "c:/cygwin64/home/Pandari/org/todo.org")) t)
 '(package-selected-packages
   (quote
    (helm-pt ws-butler window-numbering which-key web-mode web-beautify use-package toc-org spacemacs-theme spaceline solarized-theme smooth-scrolling smartparens slim-mode scss-mode sass-mode restart-emacs ranger rainbow-delimiters quelpa popwin phpunit phpcbf php-extras php-auto-yasnippets persp-mode pcre2el paradox page-break-lines org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets move-text macrostep linum-relative less-css-mode json-mode js2-refactor js-doc jade-mode info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-symbol highlight-parentheses highlight-numbers help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flyspell helm-flx helm-emmet helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag golden-ratio gnuplot git-gutter-fringe git-gutter-fringe+ flycheck-pos-tip flx-ido fill-column-indicator expand-region exec-path-from-shell evil-visualstar evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-multiedit evil-matchit evil-anzu eval-sexp-fu elisp-slime-nav drupal-mode diff-hl company-web company-tern company-statistics company-quickhelp color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clean-aindent-mode buffer-move bracketed-paste bind-map auto-yasnippet auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(paradox-github-token t)
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
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
