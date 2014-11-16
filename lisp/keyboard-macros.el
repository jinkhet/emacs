;;; keyboard-macros.el  -- all of my various keyboard macros

;; 
;; search a path given without line-breaks between each and add line breaks
;; for readability
(fset 'jcc-macro-expand-path-to-multiline
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([19 32 13 return] 0 "%d")) arg)))

;; given a perl stack-trace, make sure that it has 1 line per entry to make reading easier
(fset 'jcc-linebreak-perl-stacktrace
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([19 124 13 return] 0 "%d")) arg)))

(fset 'jcc-copy-line
   [?\C-a ?\C-  ?\C-e ?\M-w ?\C-j ?\C-y])

(fset 'jcc-comment-debugging-statements
   [?\C-s ?% ?j ?c ?c ?% ?\C-a ?\C-  ?\C-e ?\C-c ?\C-c])

(fset 'jcc-delete-debugging-statements
   [?\C-s ?% ?j ?c ?c ?% ?\C-m ?\C-a ?\C-k backspace])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'keyboard-macros)
