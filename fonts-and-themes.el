(defun incarnadine-cursor ()
 (interactive)
 (set-cursor-color "red")
 (setq default-frame-alist
	'((cursor-color . "red"))) 
 )

(defun magenta-cursor ()
 (interactive)
 (set-cursor-color "#DC8CC3")
 (setq default-frame-alist
	'((cursor-color . "#DC8CC3"))) 
 ) 

;;;; functions to switch fonts and font-sizes in the editor

(defun courier-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Courier")
    (set-frame-width (selected-frame) 97))

(defun lucida-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Ludida Sans Typewriter"))

(defun georgia-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Georgia" :height 160))


(defun hack-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Hack"))


(defun monaco-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Monaco"))

(defun vera-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Bitstream Vera Sans Mono"))

(defun consolas-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Consolas"))

(defun deja-vu-font ()
  (interactive)
  (set-face-attribute 'default nil :font "DejaVu Sans Mono"))


(defun inconsolata-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Inconsolata":height 160))
(defun last-words ()
  (interactive)
  (set-face-attribute 'default nil :font "Last Words" :height 200))

(defun tiny-type ()
  (interactive)
  (set-face-attribute 'default nil  :height 150)

  )

(defun miniscule-type ()
  (interactive)
  (set-face-attribute 'default nil  :height 140)

  )


(defun set-font-size (value)
  "Set font size"
  (interactive "nfont size bra? ")
(set-face-attribute 'default nil  :height value)
)




(defun small-type ()
  (interactive)
  (set-face-attribute 'default nil  :height 190)
  (set-frame-width (selected-frame) 89)
  )

(defun medium-type ()
  (interactive)
  (set-face-attribute 'default nil  :height 215)
  (set-frame-width (selected-frame) 89)
  )

(defun large-type ()
  (interactive)
  (set-face-attribute 'default nil  :height 350)
  (set-frame-width (selected-frame) 68)
  )

;;;; functions to adjust the transparency of the frame

(defun opaque ()
  (interactive)
  (set-frame-parameter (selected-frame) 'alpha '(100 100))
  (add-to-list 'default-frame-alist '(alpha 100 100))
  )



;;;; functions to automatically load color-themes

(defun zenburn ()
  "Open my favorite file:  ~.emacs.
The function is poorly named, didn't really want to 'load' it, just open it."
  (interactive)
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/zenburn-jay.el")
(monaco-font)
(custom-set-faces
;; (spacemacs/toggle-fringe-off)
'(minibuffer-prompt ((t (:weight bold :foreground "white" :background "black"))))
'(org-ellipsis ((t (:background "#3F3F3F" :foreground "#E0CF9F" :underline t)))) 
'(org-ellipsis ((t (:background "#3F3F3F" :foreground "#E0CF9F" :underline t)))) 
`(org-tag ((t (:bold t :weight bold :background "#3F3F3F"))))

`(org-ellipsis ((t (:underline nil :box (:line-width 1 :color "#3F3F3F") :foreground "#999999" :background "#3F3F3F")))) 
(scrollbar-init)
)

(org-mode)
  (set-cursor-color "violet")
  )

(defun ritchie ()
  (interactive)
  (load-theme 'ritchie)
  (incarnadine-cursor)
(org-mode)
  )

(defun blue-light ()
  (interactive)
  (load-theme 'material-light)
  (incarnadine-cursor)
(org-mode)
  )


(defun tomorrow-night ()
  (interactive)
  (load-theme 'sanityinc-tomorrow-night)
(org-mode)
)


(defun solarized-dark ()
  "Open my own customized version of the Solarized color theme."
  (interactive)
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/solarized-jay.el")
 (load-theme 'solarized-dark)
  (org-mode)
;  (incarnadine-cursor)
  )

(defun solarized-light ()
  "Open my own customized version of the Solarized color theme."
  (interactive)
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/solarized-jay.el")
  (load-theme 'solarized-light)
  (org-mode)
  (incarnadine-cursor)
  )

(defun whiteboard ()
  "Open my own customized version of the Solarized color theme."
  (interactive)
    (load-file "~/emacs/prelude/personal/jay-custom-color-themes/whiteboard-jay.el")
  (org-mode)
    )

(defun spolsky ()
  "Open my own customized version of the Solarized color theme."
  (interactive)
  (load-file "/Users/jay/gnulisp/jay-custom-color-themes/spolsky-jay.el")
  (incarnadine-cursor)
    (org-mode)
  )

(defun big-cyberpunk ()
  "Open my own customized version of the Cyberpunk color theme."
  (interactive)
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/cyberpunk-big-jay.el")
  (org-mode)
  (org-bullets-mode 1)
  (incarnadine-cursor)
  (turn-on-auto-capitalize-mode)
(boss-mode)
  )

(defun cyberpunk-jay ()
  "Open my own customized version of the Cyberpunk color theme."
  (interactive)
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/cyberpunk-jay.el")
  (org-mode)
(scrollbar-init)
  (incarnadine-cursor)
)

(defun cyberpunk-writeroom ()
  "Open my own customized version of the Cyberpunk color theme."
  (interactive)
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/cyberpunk-jay.el")
  (org-mode)
  (org-bullets-mode 1)
  (incarnadine-cursor)
  (turn-on-auto-capitalize-mode)
  (writeroom-mode 1)
(play-sound-file "/Users/jay/Music/iTunes/iTunes Media/Music/Unknown Artist/Unknown Album/Space Age Motor Cycle 02.wav"))

(defun cyberpunk-large ()
  "Open my own customized version of the Cyberpunk color theme."
  (interactive)
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/cyberpunk-jay.el")
  (org-mode)
  (org-bullets-mode 1)
  (incarnadine-cursor)
  (turn-on-auto-capitalize-mode)
(large-type)
(play-sound-file "/Users/jay/Music/iTunes/iTunes Media/Music/Unknown Artist/Unknown Album/Space Age Motor Cycle 02.wav"))

(defun matrix ()
  (interactive)
  (set-face-attribute 'default nil :background "black" :foreground "lime")
  ;; (set-face-attribute 'default nil :background "black" :foreground "lime" :font "Courier" :height 180)
)

;;;; functions to change the appearance of Emacs to various beautiful defaults automatically load

;; Set transparency of emacs
(defun transparency-set-value (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (incarnadine-cursor)
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))


(defun transparent-serenity (value)
"Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value)
  (load-theme 'cyberpunk) 
  (toggle-frame-fullscreen)
  (toggle-frame-maximized)
  )


(defun top-gun-mode ()
"Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive)
(set-frame-parameter (selected-frame) 'alpha '(40 40))
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/cyberpunk-serenity.el")
;; (set-fringe-mode -1)
(setq fringe-styles '("no-fringes" . 0)) 
)


(defun rainy-highway-mode ()
  (interactive)
  (set-frame-parameter (selected-frame) 'alpha '(65 65))
  (add-to-list 'default-frame-alist '(alpha 65 65))
  (load-file "~/emacs/prelude/personal/jay-custom-color-themes/cyberpunk-jay.el")
  (shut-the-fuck-up)
)

(defun shut-the-fuck-up()
  "disable all inline notifications"
  (interactive)
(org-mode)
  (boss-mode)
(flyspell-mode-off)
(turn-off-auto-capitalize-mode)
(writegood-mode 0)
(writeroom-mode 1)
(recenter-top-bottom))


(defun medium-type ()
  (interactive)
  (set-face-attribute 'default nil  :height 260)
  (set-frame-width (selected-frame) 89)
  )



(defun leuven ()
  (interactive)
(load-theme 'leuven)
;; (load-file "/Users/jay/gnulisp/jay-custom-color-themes/leuven-jay.el")
  (incarnadine-cursor)
  (org-mode) 
(custom-set-faces
;;  '(bold ((t (:inherit font-lock-warning-face :weight bold))))
'(bold ((t (:family "Sans Serif" :weight bold :foreground "red" :height 1.1))))
'(italic ((t (:foreground "#1F8DD6" :family "Garamond" :slant italic :height 1.3))))
  '(org-link ((t (:underline nil))))) 
  )

(defun garamond-web-font ()
  (interactive)
(set-face-attribute 'default nil :font "Garamond" :height 260)
)

(defun adobe-garamond-pro ()
 (interactive)
(set-face-attribute 'default nil :font "Adobe Garamond Pro" :height 260)
)


(defun adobe-caslon-pro ()
 (interactive)
(set-face-attribute 'default nil :font "Adobe Caslon Pro" :height 260))


(make-face 'hard-to-read-font)
(set-face-attribute 'hard-to-read-font nil :background "darkgrey" :foreground "grey")

(define-minor-mode hard-to-read-mode
  "This mode might be useful when you don't like certain text to be seen over your shoulders."
  :init-value nil :lighter " hard-to-read" :keymap nil
  (if hard-to-read-mode
      (progn
        (font-lock-mode nil)
        (buffer-face-mode t)
        (buffer-face-set 'hard-to-read-font))
    (progn
      (font-lock-mode t)
      (buffer-face-mode nil))))


(defun box-cursor ()
(interactive)
(setq-default cursor-type 'box)
(setq cursor-type 'box)
(set-cursor-color "red")
(setq blink-cursor-mode nil)
)

(defun horizontal-cursor ()
(interactive)
(setq-default cursor-type 'hbar)
(setq cursor-type 'hbar)
(set-cursor-color "red")
(setq blink-cursor-blinks 10)
(setq blink-cursor-mode t)
)


(defun ommwriter-mode ()
(interactive)
(vera-font)
(horizontal-cursor))

(defun is-in-terminal ()
    (not (display-graphic-p)))

(defun iterm-mode ()
(interactive)
;; (spacemacs/toggle-highlight-current-line-globally-off)
(setq menu-bar-mode -1)
)

(defun beach-mode ()
  (interactive)
  (transparency-set-value 50)
(setq fringe-styles '("no-fringes" . 0)) 
  (org-mode)
(text-scale-increase 2)
  )

(defun beach-light ()
  (interactive)
(load-theme 'leuven)
(beach-mode)
(text-scale-increase 2)
  )


(defun beach-dark ()
  (interactive)
(load-theme 'cyberpunk)
(beach-mode)
(text-scale-increase 2)
  )

(defun ample-zen ()
  (interactive)
(load-theme 'ample-zen)
(custom-set-faces
'(org-quote ((t (:background "#000000"))))
'(org-code ((t (:inherit success))))
'(org-link ((t (:underline nil)))))

(org-mode)
(text-scale-increase 2)
)





(defun spacemacs-light ()
 (interactive)
(load-theme 'spacemacs-light)
;; (load-file "/Users/jay/gnulisp/jay-custom-color-themes/leuven-jay.el")
 (incarnadine-cursor)
 (org-mode) 
(custom-set-faces
;; '(bold ((t (:inherit font-lock-warning-face :weight bold))))
'(bold ((t (:family "Sans Serif" :weight bold :foreground "red" :height 1.1))))
'(italic ((t (:foreground "#1F8DD6" :family "Garamond" :slant italic :height 1.3))))
 '(org-link ((t (:underline nil))))) 
 ) 
