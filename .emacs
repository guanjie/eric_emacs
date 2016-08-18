;; Adding packages
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (add-to-list 'custom-theme-load-path "/Users/eric/elixircode/themes")
  (package-initialize))

;; Evil mode on
(require 'evil)
(evil-mode 1)

;; smooth scrolling
(setq scroll-margin 5
      scroll-conservatively 9999
      scroll-step 1)

;; C-u to scroll up
(define-key evil-normal-state-map (kbd "C-u") (lambda ()
                    (interactive)
                    (evil-scroll-up nil)))
(define-key evil-normal-state-map (kbd "C-d") (lambda ()
                        (interactive)
                        (evil-scroll-down nil)))

;; Linum
(global-linum-mode t)

;; linum padding on the left
(setq linum-format "%d ")


;; Git gutter mode
(global-git-gutter-mode +1)

;; key-bindings
(global-set-key (kbd "C-c") 'evil-normal-state)
(global-set-key (kbd "C-k") 'other-window)

;; show parenthesis mode on
(show-paren-mode t)

;; remember the cursor position when reopen file
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;; Remove backup files
(setq make-backup-files nil)

;; GDB many windows
(setq gdb-many-windows t)

;; This way when convert back to normal mode it won't get back
(setq evil-move-cursor-back nil)

;; menu-bar-mode -1
(menu-bar-mode -1)

;; Powerline Evil
(require 'powerline)
(powerline-evil-vim-color-theme)
(display-time-mode t)


;; Color theme approximate helps with the color contrast
;; (color-theme-approximate-on)

;; Evil Leader TODO don't work
(setq evil-leader/in-all-states 1)
(global-evil-leader-mode)
(evil-leader/set-leader ",")

;; save bookmarks
(setq bookmark-default-file "~/.emacs.d/bookmarks"
      bookmark-save-flag 1) ;; save after every change
(put 'narrow-to-region 'disabled nil)

;; Jump Over 1 line a time
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;; esc quits, in the M-x buffer typing ESC will really quit this way
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)


