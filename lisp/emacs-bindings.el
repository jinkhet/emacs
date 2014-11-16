;;; Global keybindings
(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)
(global-set-key "\C-c\C-b" 'emacs-lisp-byte-compile)
(global-set-key "\C-c\C-l" 'emacs-lisp-byte-compile-and-load)
(global-set-key "\C-c\C-t" 'update-time-stamp)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-k" 'kill-region)
;; better line kill function
(global-set-key "\C-x\C-j" 'goto-line)
(global-set-key "\C-x\C-b" 'ibuffer)
(global-set-key "\C-x\C-g" 'jao-copy-line)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-h" 'backward-delete-char)  

(global-set-key [f5] 'goto-line)
;(global-set-key [f6] 'shell)
;(global-set-key [f6] 'find-name-dired)

(global-set-key [f6] 'find-dired)
(global-set-key [f7] 'find-grep-dired)

(global-set-key "\C-c\C-j" 'join-line)

(global-set-key "\C-c\C-g" 'magit-status)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'emacs-bindings)
