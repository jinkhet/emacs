;(defvar emacs-root (if (or (eq system-type 'gnu/linux)
;			   (eq system-type 'linux))
;		       "/home/jcanton/"  "/home/mobaxterm/.emacs.d/")
; "The root of all of my personal emacs stuff")

(defvar emacs-root "/home/mobaxterm/.emacs.d/");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Set up our load path
;;;
;; this one requires a little Common LISPery ...
;(require 'cl)
(cl-labels ((add-path (p)
		   (add-to-list 'load-path
				(concat emacs-root p))))
  (add-path "lisp")
  (add-path "lisp/color-theme-6.6.0")
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Libraries we should load
;;;


;; Color theme
;(require 'color-theme)

;; timestamp
(require 'timestamp)

;; keyboard macros
(require 'keyboard-macros)


;; ruby
(require 'ruby-mode)

;; my functions
(require 'my-functions)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global keybindings
(require 'emacs-bindings)
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; grab MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (<= emacs-major-version 24)
  ;; for important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Startup stuff
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Various settings
;;;

;; you know how we run!
;(server-start)
;(add-hook 'after-init-hook 'server-start)
;(add-hook 'server-done-hook
;(lambda ()
;(shell-command
;"screen -r -X select `cat ~/tmp/emacsclient-caller`")))

;; setup color theme
(color-theme-initialize)
(if window-system
    (color-theme-andreas)
  (color-theme-clarity))

;; no startup message
(setq inhibit-startup-message t)

;; save space, bitches!
(menu-bar-mode nil)
(scroll-bar-mode nil)
(tool-bar-mode nil)

;;; uncomment this line to disable loading of "default.el" at startup
;(setq inhibit-default-init t)

;; turn on font-lock mode
(global-font-lock-mode t)

;; enable visual feedback on selections
(setq transient-mark-mode t)

;; for putting a timestamp in a file
(setq time-stamp-default-type 6) ; 6 == ISO style

;; put the backup files into the same place
(setq backup-directory-alist `(("." . , (expand-file-name (concat emacs-root ".emacs-backups")))))

;; load changes to buffer automagically
(autoload 'auto-revert-mode "autorevert" nil t)
(autoload 'turn-on-auto-revert-mode "autorevert" nil nil)
(autoload 'global-auto-revert-mode "autorevert" nil t)
(global-auto-revert-mode 1)

;; use iswitchb mode
(icomplete-mode 1)

;; "y" or "n" instead of "yes" or "no"
(fset 'yes-or-no-p 'y-or-n-p)

;; show paren mode guaranteed
(show-paren-mode t)

;; stuff for perl editing
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq c-default-style
      '((c++-mode . "k&r")
	(c-mode   . "k&r")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(jde-enable-abbrev-mode t)
 '(safe-local-variable-values (quote ((unibyte . t))))
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
