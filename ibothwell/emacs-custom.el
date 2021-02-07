;; ENV
(setenv "PATH" (concat (getenv "PATH") ":/Users/ibothwell/bin"))
(setq exec-path (append exec-path '("/Users/ibothwell/bin")))

;; Theme ---------------------------------
(load-theme 'solarized-light 'no-confirm)
;;(load-theme 'solarized-dark 'no-confirm)

;; Font  ----------------------------
;;(print (font-family-list))
;;(print (list-fontsets "Fira Mono"))
;;name (opened by): -*-Fira Mono-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1
;;full name: Fira Mono:pixelsize=12:weight=normal:slant=normal:width=normal:spacing=100:scalable=true
;;size: 12
;;height: 19
;;baseline-offset:  0
;;relative-compose:  0
(add-to-list 'default-frame-alist '(font . "Fira Mono-14"))
(set-face-attribute 'default t :font "Fira Mono-14")
(set-default-font "Fira Mono-14")
(setq-default line-spacing .4)

;; kill bell ----------------------------
;; (setq visible-bell 1) ;; visual bell
;; (setq visible-bell nil) ;; audible bell
;; (setq visible-bell 'ignore) ;; do nothing
;; (setq visible-bell 'top-bottom) ;; flash top and bottom
;; quiet, please! No dinging!
(defun my-terminal-visible-bell ()
  "A friendlier visual bell effect."
  (invert-face 'mode-line)
  (run-with-timer 0.1 nil 'invert-face 'mode-line))

(setq visible-bell nil
      ring-bell-function 'my-terminal-visible-bell)

;; nicer scrolling ----------------------
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      mouse-wheel-scroll-amount '(3)
      mouse-wheel-progressive-speed nil)


;; Projectile
(projectile-global-mode)
;;https://github.com/bbatsov/projectile/issues/987
;; note this is because most of clojurescript complied files are found here...
(setq ag-ignore-list '("*.js" "/resources/public/js/out" "/out" "/target"))


;; Clojurescript
;;(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")
(setq cider-preferred-build-tool 'lein)

;;(require 'guide-key)
;;(setq guide-key/guide-key-sequence '("C-x" "C-c" "C-x 4" "C-x 5" "C-c ;" "C-c ; f" "C-c ' f" "C-x n" "C-x C-r" "C-x r" "M-s" "C-h" "C-x C-a"))
;;(add-hook 'after-init-hook
;;          (lambda ()
;;            (guide-key-mode 1)
;;            (diminish 'guide-key-mode)))

(require 'which-key)
(which-key-mode)
(which-key-setup-side-window-right)

;; aggressive-indent-mode
(require 'aggressive-indent)
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)
(add-hook 'clojurescript-mode-hook #'aggressive-indent-mode)
(add-hook 'css-mode-hook #'aggressive-indent-mode)
;; (global-aggressive-indent-mode 1)
;; (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
;; (add-hook 'clojure-mode-mode-hook #'aggressive-indent-mode)
;; (add-hook 'html-mode-hook #'aggressive-indent-mode)
;; (add-hook 'css-mode-hook #'aggressive-indent-mode)
;;(add-to-list 'aggressive-indent-excluded-modes 'html-mode)

(add-hook 'javascript-mode-hook #'autopair-mode)

;; Which key setup
;; (require 'which-key)
;; (which-key-mode)
;; (which-key-setup-side-window-right)
