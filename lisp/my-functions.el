;;; Functions to be mapped

;; copy line from anyplace in the line
(defun jao-copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
		  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))

;; after yanking a line, reindent the region
(defadvice yank (after indent-region activate)
  (if (member major-mode '(emacs-lisp-mode scheme-mode lisp-mode
					   c-mode c++-mode objc-mode
					   LaTeX-mode TeX-mode common-lisp-mode
					   ruby-mode perl-mode))
      (indent-region (region-beginning) (region-end) nil)))


;; remove autoloading of jdee
;(unload-feature 'jde-auto-load)
;(add-hook 'java-mode-hook 'java-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'my-functions)