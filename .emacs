;; Check version
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
;;  (add-hook 'after-init-hook 'global-company-mode)
  (add-to-list 'custom-theme-load-path "/Users/eric/elixircode/themes")
  (package-initialize))

;; Evil Leader TODO don't work
(setq evil-leader/in-all-states 1)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "f" 'find-file
  "b" (kbd "C-x <left>")
  "n" (kbd "C-x <right>")
  "s" (kbd "C-x C-s")
  "w" (kbd "C-x 0")
  "d" 'alchemist-help-search-at-point
  "g" 'git-gutter:update-all-windows
  "<SPC>" 'delete-other-windows
  "k" 'kill-buffer)

;; Evil mode on
(require 'evil)
(evil-mode 1)

;; menu-bar-mode -1
(menu-bar-mode -1)
;; tool-bar-mode
(tool-bar-mode -1)
;; cursor type to hbar
(set-default 'cursor-type 'hbar)

;; auto complete -1 since we have company
(auto-complete-mode)

;; company mode
(global-company-mode)

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
;; TODO 加的
(nlinum-mode)

(autopair-global-mode)

;;alchemist
(alchemist-mode t)

;; TODO 加的这个
(ac-config-default)

;; linum padding on the left
(setq linum-format "%d ")

;; Alchemist configuration:
(setq alchemist-mix-command "/usr/local/bin/mix")
(setq alchemist-mix-test-task "espec")
(setq alchemist-mix-test-default-options '()) ;; default
;; (setq alchemist-mix-env "prod") ;; Set it through a specific environment
;; iEX Setup
(setq alchemist-iex-program-name "/usr/local/bin/iex") ;; default: iex
(setq alchemist-execute-command "/usr/local/bin/elixir") ;; default: elixir
(setq alchemist-compile-command "/usr/local/bin/elixirc") ;; default: elixirc
(setq alchemist-test-status-modeline nil)
(setq alchemist-key-command-prefix (kbd "C-c ,")) ;; default: (kbd "C-c a")
(setq alchemist-test-mode-highlight-tests nil) ;; default t
(setq alchemist-test-ask-about-save nil)
(setq alchemist-test-status-modeline nil)
(setq alchemist-test-display-compilation-output t)
(setq alchemist-hooks-test-on-save t)
(setq alchemist-hooks-compile-on-save t)
;; 加的
(setq alchemist-help-minor-mode t)
(setq alchemist-goto-elixir-source-dir "/usr/local/bin/")

;; Git gutter mode
(global-git-gutter-mode +1)

;; alchemist just to source
;; (setq alchemist-goto-elixir-source-dir "/usr/local/bin/elixir")

;; TODO 加了from enberg on #emacs 好像没用？
(setq compilation-finish-function
  (lambda (buf str)
    (if (null (string-match ".*exited abnormally.*" str))
        ;;no errors, make the compilation window go away in a few seconds
        (progn
          (run-at-time
           "2 sec" nil 'delete-windows-on
           (get-buffer-create "*compilation*"))
          (message "No Compilation Errors!")))))

;; key-bindings setkey setup
(global-set-key (kbd "C-c C-n") 'evil-normal-state)
(global-set-key (kbd "C-j") 'other-window)
(global-set-key (kbd "C-x b") (kbd "C-x <left>"))
(global-set-key (kbd "C-x n") (kbd "C-x <right>"))
(global-set-key (kbd "C-x |") 'toggle-window-split)
(global-set-key (kbd "C-l") 'company-complete)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-M-z") 'switch-window)
(global-set-key (kbd "C->") 'ace-jump-mode)
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;; (global-set-key (kbd "C-h C-f") 'find-function-at-point)

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


;; Powerline Evil
(require 'powerline)
(powerline-evil-vim-color-theme)
(setq powerline-default-separator 'wave)
;;(display-time-mode t)


;; Color theme approximate helps with the color contrast
;; (color-theme-approximate-on)


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


