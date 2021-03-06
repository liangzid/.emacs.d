(require 'use-package)

;; for python
(use-package python
  :mode ("\\.py" . python-mode)
  :ensure t)
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(use-package python-black
  :demand t
  :after python
  :config
  (python-black-on-save-mode))


;;;;;;;;;;;; 未完成的功能
;; batch TAB
;; 在选中一部分文本之后，使用tab实现他们的批量缩进


;; 在选中一部分文本之后，使用 shift-TAB实现他们的批量反缩进


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; 需要安装pyenv才能使用
;; (use-package pyenv-mode
;;  :init
;;  (add-to-list 'exec-path "~/.pyenv/shims")
;;  (setenv "WORKON_HOME" "~/.pyenv/versions/")
;;  :config
;;  (pyenv-mode))


(provide 'init-python)

;; 搜罗到的其他还没有尝试的链接,值得一试,如果有时间的话
;; https://www.jianshu.com/p/dac96805cb10

