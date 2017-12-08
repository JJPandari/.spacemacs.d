;; configuration code that is independent of packages, declaration layer variables,
;; and so on

;; (spaceline-toggle-hud-off)
;; (spaceline-toggle-buffer-position-off)
;; (spaceline-toggle-which-function-on)
;; (spaceline-toggle-minor-modes-off)
;; (spaceline-toggle-evil-state-off)
;; (spaceline-toggle-version-control-off)
;; (spaceline-toggle-purpose-off)
;; (spaceline-toggle-hud-off)
;; (spaceline-toggle-buffer-position-off)

(setq evil-normal-state-tag   (propertize "N" 'face '((:background "DarkGoldenrod2" :foreground "black")))
      evil-emacs-state-tag    (propertize "E" 'face '((:background "SkyBlue2" :foreground "black")))
      evil-insert-state-tag   (propertize "I" 'face '((:background "chartreuse3") :foreground "white"))
      evil-motion-state-tag   (propertize "M" 'face '((:background "plum3") :foreground "white"))
      evil-visual-state-tag   (propertize "V" 'face '((:background "gray" :foreground "black")))
      evil-operator-state-tag (propertize "O" 'face '((:background "DarkGoldenrod2" :foreground "white")))
      evil-evilified-state-tag (propertize "N'" 'face '((:background "LightGoldenrod3" :foreground "black"))))
