;;; -*- lexical-binding: t; -*-
;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
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
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/")
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; helm
     ivy
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     version-control

     ;; smex
     ranger
     ;; gtags
     ;; php
     ;; java
     javascript
     html
     autohotkey
     python
     osx

     jjpandari
     jjpandari-ui
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ;; http://emacs.stackexchange.com/questions/26729/how-to-install-a-package-from-github-to-over-emacs-builtin-one-in-spacemacs
                                      ;; (evil-multiedit :location (recipe :fetcher github :repo "hlissner/evil-multiedit"))
                                      ;; evil-snipe
                                      helm-emmet
                                      ;; tide
                                      evil-ediff
                                      ;; helm-smex
                                      color-theme-sanityinc-tomorrow
                                      solarized-theme
                                      doom-themes
                                      ;; company-jedi
                                      ;; vue-mode
                                      all-the-icons
                                      all-the-icons-dired
                                      smex
                                      keyfreq
                                      lispy

                                      lsp-mode
                                      company-lsp
                                      lsp-ui
                                      lsp-javascript-typescript
                                      lsp-vue
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
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
                                    spinner
                                    tagedit
                                    flyspell
                                    company-tern
                                    projectile
                                    diff-hl
                                    spaceline
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-but-keep-unused))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5
   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the lastest
   ;; version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil
   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil
   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
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
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         solarized-light
                         solarized-dark
                         sanityinc-tomorrow-eighties
                         moe-light
                         sanityinc-tomorrow-day
                         spacemacs-light
                         zenburn
                         sanityinc-solarized-light
                         spacemacs-dark
                         leuven
                         monokai

                         )
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font (if (eq system-type 'darwin)
                                 '("Source Code Pro"
                                   :size 15
                                   :weight normal
                                   :width normal
                                   :powerline-scale 1.1)
                               '("Source Code Pro"
                                 :size 18
                                 :weight normal
                                 :width normal
                                 :powerline-scale 1.1))
   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t
   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil
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
   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non-nil, the helm header is hidden when there is only one source.
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
   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non-nil the frame is maximized when Emacs starts up.
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
   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
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
   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"
   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil
   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (setq configuration-layer-elpa-archives
        '(("melpa-cn" . "https://elpa.emacs-china.org/melpa/")
          ("org-cn"   . "https://elpa.emacs-china.org/org/")
          ("gnu-cn"   . "https://elpa.emacs-china.org/gnu/")
          ("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/")
          ))
  (setq custom-file "~/.spacemacs.d/custom.el")
  (load custom-file)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  (require 'solarized-theme)
  (require 'doom-themes)
  (require 'ranger)
  (require 'all-the-icons)

  (global-company-mode t)
  (golden-ratio-mode t)
  (global-auto-revert-mode t)
  (add-hook 'prog-mode-hook '(lambda ()
                               (electric-pair-mode 1)
                               (which-function-mode 1)
                               (diminish 'evil-snipe-local-mode)
                               (diminish 'projectile-mode);; TODO excluding it doesn't work?
                               ))
  (global-prettify-symbols-mode t)

  (add-hook 'inferior-scheme-mode '(lambda () (electric-pair-mode 1)))
  (global-auto-revert-mode 1)
  (setq
   aya-persist-snippets-dir "~/.spacemacs.d/snippets"
   golden-ratio-auto-scale t
   initial-frame-alist (quote ((fullscreen . maximized)))
   ;; auto-save-default nil
   org-src-fontify-natively t
   org-agenda-files '("~/org")
   auto-mode-alist (append
                    '(("\\.zsh\\'" . shell-script-mode)
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
   js-indent-level 2
   )
  (delete-selection-mode t)
  (setq-default
   truncate-lines t
   ;; indent-tabs-mode t
   tab-width 2
   evil-move-beyond-eol nil
   )

  (ranger-override-dired-mode t)

  ;; http://emacs.stackexchange.com/a/20717/12854
  (with-eval-after-load 'evil
    (defalias #'forward-evil-word #'forward-evil-symbol))
  (global-set-key (kbd "C-s") 'evil-write-all)
  (define-key evil-inner-text-objects-map (kbd "m") 'evilmi-inner-text-object)
  (define-key evil-outer-text-objects-map (kbd "m") 'evilmi-outer-text-object)
  (define-key evil-normal-state-map (kbd "+") 'spacemacs/evil-numbers-transient-state/evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "-") 'spacemacs/evil-numbers-transient-state/evil-numbers/dec-at-pt)
  (define-key evil-normal-state-map (kbd "C-a") 'evil-first-non-blank)
  (define-key evil-normal-state-map (kbd "C-e") 'evil-end-of-line)
  (define-key evil-visual-state-map (kbd "C-a") 'evil-first-non-blank)
  (define-key evil-visual-state-map (kbd "C-e") 'evil-end-of-line)
  (define-key evil-motion-state-map (kbd "C-e") 'move-end-of-line)
  (define-key evil-normal-state-map (kbd "C-j") 'evil-scroll-line-down)
  (define-key evil-motion-state-map (kbd "C-j") 'evil-scroll-line-down)
  (define-key evil-normal-state-map (kbd "C-k") 'evil-scroll-line-up)
  (define-key evil-motion-state-map (kbd "C-k") 'evil-scroll-line-up)
  (define-key evil-normal-state-map (kbd "'") 'evil-goto-mark)
  ;; (define-key evil-normal-state-map (kbd "SPC '") 'evil-use-register)
  ;; (define-key evil-visual-state-map (kbd "SPC '") 'evil-use-register)
  (evil-define-key 'normal js2-mode-map (kbd "g d") #'js2-jump-to-definition)
  (define-key evil-insert-state-map (kbd "C-t") 'evil-execute-in-normal-state)
  (define-key evil-insert-state-map (kbd "C-b") 'delete-char)
  (define-key evil-insert-state-map (kbd "C-o") 'evil-open-below)
  (define-key evil-insert-state-map (kbd "C-S-o") 'evil-open-above)
  (define-key evil-insert-state-map (kbd "C-y") (lambda () (interactive) (evil-paste-from-register 34))) ;; 34 is "
  (define-key evil-insert-state-map (kbd "C-d") 'backward-char)
  (define-key evil-insert-state-map (kbd "C-n") 'next-line)
  (define-key evil-insert-state-map (kbd "C-p") 'previous-line)
  (define-key evil-insert-state-map (kbd "C-a") 'beginning-of-line-text)
  (define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)
  (define-key evil-insert-state-map (kbd "C-k") 'kill-line)
  (define-key evil-insert-state-map (kbd "C-w") #'evil-delete-backward-word)
  (define-key evil-insert-state-map (kbd "C-v") #'evil-paste-from-register)
  (define-key evil-insert-state-map (kbd "M-d") #'backward-word)
  (define-key evil-insert-state-map (kbd "M-b") #'kill-word)
  (define-key evil-insert-state-map (kbd "<C-backspace>") #'er/expand-region)
  (define-key evil-insert-state-map (kbd "H-v") #'yank-pop)
  (spacemacs/set-leader-keys "(" #'backward-up-list)
  (spacemacs/set-leader-keys ")" #'up-list)
  (define-key evil-normal-state-map (kbd "TAB") #'spacemacs/alternate-window)
  (spacemacs/set-leader-keys "," #'evil-indent)
  (defun jjpandari/adjust-window () (golden-ratio-adjust 1))
  (advice-add #'spacemacs/alternate-window :after #'jjpandari/adjust-window)
  (define-key evil-normal-state-map (kbd "C-q") 'spacemacs/evil-search-clear-highlight)
  (define-key prog-mode-map (kbd "H-c") 'aya-create)
  (define-key prog-mode-map (kbd "H-e") 'spacemacs/auto-yasnippet-expand)
  (define-key prog-mode-map (kbd "H-w") 'aya-persist-snippet)
  (evil-define-key 'normal org-mode-map (kbd "g o") #'org-todo)
  (define-key evil-normal-state-map (kbd "M") 'evilmi-jump-items)
  (define-key evil-visual-state-map (kbd "M") 'evilmi-jump-items)
  (define-key evil-operator-state-map (kbd "M") 'evilmi-jump-items)
  (spacemacs/set-leader-keys-for-major-mode 'snippet-mode
    "," 'yas-load-snippet-buffer-and-close
    "l" 'yas-load-snippet-buffer)

  (define-key minibuffer-local-map (kbd "M-d") #'backward-word)
  (define-key minibuffer-local-map (kbd "M-b") #'kill-word)
  (define-key minibuffer-local-map (kbd "C-w") #'backward-kill-word)
  (define-key minibuffer-local-map (kbd "C-d") #'backward-char)
  (define-key minibuffer-local-map (kbd "C-b") #'delete-char)

  (evil-define-key 'insert js2-mode-map (kbd "C-l") #'emmet-expand-yas)
  (evil-define-key 'insert web-mode-map (kbd "C-l") #'emmet-expand-yas)

  ;; https://stackoverflow.com/a/22114743/4788022
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

  (defun jjpandari/evil-search-symbol-forward ()
    "Search forward for symbol under point."
    (interactive)
    (evil-ex-search-word-forward 1 t)
    )
  (define-key evil-normal-state-map (kbd "*") 'jjpandari/evil-search-symbol-forward)
  (define-key evil-motion-state-map (kbd "*") 'jjpandari/evil-search-symbol-forward)

  (defun jjpandari/evil-search-symbol-backward ()
    "Search backward for symbol under point."
    (interactive)
    (evil-ex-search-word-backward 1 t)
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
    (define-key company-active-map (kbd "C-n") #'company-select-next)
    (define-key company-active-map (kbd "C-p") #'company-select-previous)
    (define-key company-active-map (kbd "C-m") #'company-complete-common)
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

  ;; https://emacs.stackexchange.com/a/7925/12854
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
  (define-key company-active-map (kbd "C-d") nil)
  (define-key company-active-map (kbd "C-b") 'company-show-doc-buffer)
  (define-key company-active-map (kbd "C-s") nil)
  (define-key company-active-map (kbd "C-/") nil)

  (with-eval-after-load 'yasnippet
    ;; (define-key yas-keymap [tab] 'tab-complete-or-next-field)
    ;; (define-key yas-keymap (kbd "TAB") 'tab-complete-or-next-field)
    (define-key yas-keymap (kbd "TAB") nil)
    (define-key yas-keymap (kbd "<tab>") nil)
    (define-key yas-keymap [(control tab)] 'yas-next-field)
    (define-key yas-keymap (kbd "<return>") #'yas-next-field)
    (define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)
    (define-key yas-keymap (kbd "C-d") nil)
    (define-key yas-keymap (kbd "C-b") 'yas-skip-and-clear-or-delete-char)
    (setq yas-installed-snippets-dir "")
    )

  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Source Han Sans CN Regular" :size 15)))
  (set-fontset-font t nil (font-spec :family "Dejavu Sans Mono") nil 'append)

  ;; http://emacs.stackexchange.com/a/7745/12854
  (defun browse-file-directory ()
    "Open the current file's directory however the OS would."
    (interactive)
    (if default-directory
        (browse-url-of-file (expand-file-name default-directory))
      (error "No `default-directory' to open")))
  (spacemacs/set-leader-keys "od" 'browse-file-directory)

  (add-hook 'php-mode-hook (lambda () (progn
                                        (electric-indent-local-mode -1)
                                        (modify-syntax-entry ?$ "\_" php-mode-syntax-table))))
  (add-hook 'python-mode-hook (lambda () (progn
                                           ;; (setq indent-tabs-mode t)
                                           ;; (add-to-list 'company-backends 'company-jedi)
                                           )))
  ;; (with-eval-after-load 'js2-mode
  ;;   (require 'lsp-javascript-typescript))
  (add-hook 'js2-mode-hook (lambda () (progn
                                    ;; (modify-syntax-entry ?_ "\_" js2-mode-syntax-table)
                                    ;; (modify-syntax-entry ?$ "\_" js2-mode-syntax-table)
                                    ;; (flycheck-mode -1)
                                    ;; (lsp-javascript-typescript-enable)
                                    (js2-refactor-mode 1))) t)
  (setq js2-global-externs '("$" "jQuery" "jquery" "_"))
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil)

  (with-eval-after-load 'org
    (evil-define-key 'normal org-mode-map (kbd "RET") 'ivy-switch-buffer)
    (evil-define-key 'insert org-mode-map (kbd "<C-return>") 'org-insert-heading-respect-content)
    ;; (evil-define-key 'insert org-mode-map (kbd "TAB") 'tab-indent-or-complete)
    ;; (evil-define-key 'insert org-mode-map (kbd "C-TAB") 'org-cycle)
    )

  (evil-define-key 'insert c-mode-map (kbd "C-l") (lambda () (interactive) (insert "->")))
  (evil-define-key 'insert php-mode-map (kbd "C-l") (lambda () (interactive) (insert "->")))
  (evil-define-key 'insert php-mode-map (kbd "C-j") (lambda () (interactive) (insert " => ")))

  ;; (defun evil-global-marker-p (char)
  ;;   "Whether CHAR denotes a global marker."
  ;;   (or (and (>= char ?a) (<= char ?z))
  ;;       (assq char (default-value 'evil-markers-alist))))

  (evil-define-motion evil-end-of-line (count)
    "Move the cursor to the end of the current line.
If COUNT is given, move COUNT - 1 lines downward first."
    :type inclusive
    (move-end-of-line count)
    (when evil-track-eol
      (setq temporary-goal-column most-positive-fixnum
            this-command 'next-line))
    (evil-adjust-cursor)
    (when (evil-visual-state-p)
      (when (eolp)
        ;; prevent "c$" and "d$" from deleting blank lines
        (setq evil-this-type 'exclusive))))

  (with-eval-after-load 'web-mode
    (setq
     web-mode-style-padding 0
     web-mode-script-padding 0
     web-mode-block-padding 0
     web-mode-enable-current-element-highlight t
     web-mode-comment-formats '(("java" . "//") ("javascript" . "//") ("php" . "//")))
    (setq-default
     web-mode-markup-indent-offset 2
     web-mode-code-indent-offset 2
     web-mode-css-indent-offset 2)
    (modify-syntax-entry ?' "\"" web-mode-syntax-table)
    (modify-syntax-entry ?` "\"" web-mode-syntax-table)
    ;; "-" as word so company completes kabeb-case
    (modify-syntax-entry ?_ "w" web-mode-syntax-table)
    (modify-syntax-entry ?- "w" web-mode-syntax-table)
    (define-key web-mode-map (kbd "TAB") nil)
    (define-key web-mode-map (kbd "<tab>") nil)
    (evil-define-key 'insert web-mode-map (kbd "TAB") #'tab-indent-or-complete)
    (evil-define-key 'insert web-mode-map (kbd "<tab>") #'tab-indent-or-complete)
    (setq company-backends-web-mode (cdr company-backends-web-mode)) ;; company-css & company-html super slow on osx
    (flycheck-add-mode 'javascript-eslint 'web-mode)
    ;; (add-to-list 'company-backends-web-mode 'company-lsp)
    ;; (require 'lsp-vue)

    (add-hook
     'web-mode-hook
     (lambda ()
       (setq company-minimum-prefix-length 2 ;; overwrite spacemacs' hook's settings
             web-mode-style-padding 0
             web-mode-script-padding 0
             web-mode-block-padding 0)
       ;; the next line causes an error, why did I add it?
       ;; (let ((current-prefix-arg 1)) (call-interactively 'flycheck-disable-checker nil (vector 'javascript-eslint)))
       ;; (lsp-vue-enable)
       (setq imenu-create-index-function (lambda () (jjpandari/merge-imenu 'web-mode-imenu-index)))
       (when (equal (file-name-extension buffer-file-name) "vue")
         (setq
          imenu-generic-expression ; imenu regexps for vue.js
          '(("method" "^    \\([^ ]+\\)(.*) {" 1)
            ("prop" "^  \\([^ ]+\\): {" 1)
            ("hook" "^  \\([^ ]+\\)() {" 1))))) t)

    )

  (with-eval-after-load 'flycheck (setq flycheck-idle-change-delay 1))

  (with-eval-after-load 'emmet-mode
    (define-key emmet-mode-keymap (kbd "TAB") nil)
    (define-key emmet-mode-keymap (kbd "<tab>") nil)
    (evil-define-key 'insert emmet-mode-keymap (kbd "TAB") #'tab-indent-or-complete)
    (evil-define-key 'insert emmet-mode-keymap (kbd "<tab>") #'tab-indent-or-complete)
    (define-key emmet-mode-keymap (kbd "C-j") #'evil-scroll-line-down)
    )

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

  (spacemacs/set-leader-keys "oy" 'make-cd-for-terminal)
  (spacemacs/set-leader-keys "oi" 'ibuffer)
  (spacemacs/set-leader-keys "oa" 'counsel-ag)
  (spacemacs/set-leader-keys "ov" 'yas-visit-snippet-file)
  (spacemacs/set-leader-keys "os" 'yas-new-snippet)

  (add-hook 'ranger-mode-hook 'all-the-icons-dired-mode)

  (with-eval-after-load 'image-mode
    (evil-define-key 'evilified image-mode-map (kbd "p") #'image-previous-file)
    (evil-define-key 'evilified image-mode-map (kbd "n") #'image-next-file)
  )

  (require 'keyfreq)
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1)
  (setq keyfreq-excluded-commands '(self-insert-command
                                    forward-char
                                    backward-char
                                    next-line
                                    previous-line
                                    evil-a-WORD
                                    evil-append
                                    evil-backward-char
                                    evil-backward-word-begin
                                    evil-change
                                    evil-change-line
                                    evil-complete-next
                                    evil-complete-previous
                                    evil-delete
                                    evil-delete-backward-char-and-join
                                    evil-delete-char
                                    evil-delete-line
                                    evil-emacs-state
                                    evil-end-of-line
                                    evil-escape-emacs-state
                                    evil-escape-insert-state
                                    evil-escape-isearch
                                    evil-escape-minibuffer
                                    evil-escape-motion-state
                                    evil-escape-visual-state
                                    evil-ex
                                    evil-ex-command
                                    evil-ex-completion
                                    evil-ex-delete-backward-char
                                    evil-exit-emacs-state
                                    evil-exit-visual-state
                                    evil-filepath-inner-text-object
                                    evil-filepath-outer-text-object
                                    evil-find-char
                                    evil-find-char-to
                                    evil-first-non-blank
                                    evil-force-normal-state
                                    evil-forward-char
                                    evil-forward-word-begin
                                    evil-forward-word-end
                                    evil-forward-WORD-end
                                    evil-forward-WORD-begin
                                    evil-backward-WORD-begin
                                    evil-backward-WORD-end
                                    evil-goto-definition
                                    evil-goto-first-line
                                    evil-goto-line
                                    evil-goto-mark-line
                                    evil-indent
                                    evil-inner-WORD
                                    evil-inner-double-quote
                                    evil-inner-single-quote
                                    evil-inner-word
                                    evil-insert
                                    evil-join
                                    evil-jump-backward
                                    evil-jump-forward
                                    evil-mc-make-and-goto-next-match
                                    evil-next-line
                                    evil-next-visual-line
                                    evil-normal-state
                                    evil-open-below
                                    evil-paste-after
                                    evil-paste-before
                                    evil-previous-line
                                    evil-previous-visual-line
                                    evil-record-macro
                                    evil-repeat
                                    evil-replace
                                    evil-ret
                                    evil-scroll-page-down
                                    evil-scroll-page-up
                                    evil-search-forward
                                    evil-search-next
                                    evil-search-word-forward
                                    evil-set-marker
                                    evil-substitute
                                    evil-visual-block
                                    evil-visual-char
                                    evil-visual-line
                                    evil-yank
                                    evil-ex-search-next
                                    evil-ex-search-previous
                                    evil-scroll-down
                                    evil-scroll-up
                                    evil-scroll-line-down
                                    evil-scroll-line-up
                                    ivy-done
                                    ivy-next-line
                                    ivy-previous-line
                                    undo-tree-undo
                                    undo-tree-redo))

  ;; (with-eval-after-load 'lsp-mode
  ;;   (require 'lsp-flycheck))
  ;; (require 'lsp-mode)
  ;; (require 'company-lsp)
  ;; (add-to-list 'company-backends 'company-lsp)

  (setq auto-revert-check-vc-info t)

  )
