;;Compile shortcut
(global-set-key [f12] 'compile)

(if (equal nil (equal major-mode 'org-mode))
    (windmove-default-keybindings 'meta))

;;Transparency

(set-frame-parameter (selected-frame) 'alpha 90)

(setq-default cursor-type 'bar)

(require 'bookmark)
(setq bookmark-save-flag t) ;; автоматически сохранять закладки в файл
(when (file-exists-p (concat user-emacs-directory "bookmarks"))
    (bookmark-load bookmark-default-file t)) ;; попытаться найти и открыть файл с закладками
(global-set-key (kbd "<f3>") 'bookmark-set) ;; создать закладку по F3
(global-set-key (kbd "<f4>") 'bookmark-jump) ;; прыгнуть на закладку по F4
(global-set-key (kbd "<f5>") 'bookmark-bmenu-list) ;; открыть список закладок
(setq bookmark-default-file (concat user-emacs-directory "bookmarks")) ;; хранить закладки в ф$

(setq scroll-step               1) ;; вверх-вниз по 1 строке
(setq scroll-margin            10) ;; сдвигать буфер верх/вниз когда курсор в 10 шагах от верх$
(setq scroll-conservatively 10000)

(when (window-system)
  (set-frame-size (selected-frame) 100 50))

(setq word-wrap          t) ;; переносить по словам
(global-visual-line-mode t)

(require 'linum) ;; вызвать Linum
(line-number-mode   t) ;; показать номер строки в mode-line
(global-linum-mode  t) ;; показывать номера строк во всех буферах
(column-number-mode t) ;; показать номер столбца в mode-line
(setq linum-format " %d") ;; задаем формат нумерации строк

(tooltip-mode      -1)
(menu-bar-mode     -1) ;; отключаем графическое меню                                                                                                                                              
(tool-bar-mode     -1) ;; отключаем tool-bar                                                                                                                                                      
(scroll-bar-mode   -1) ;; отключаем полосу прокрутки                                                                                                                                              
;;(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера                                                                                                                                       
(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал                                                                                                                                    
                                                                                                                                                                                                  
(electric-indent-mode -1)                                                                                                                                                                         
(electric-pair-mode 1)                                                                                                                                                                            
                                                                                                                                                                                                  
(set-default-font "Noto Mono 9")                                                                                                                                                                  
(setq linux                                                                                                                                                                                       
      '((java-mode . "linux")                                                                                                                                                                   
        (awk-mode . "linux")
        (other . "linux")))



(show-paren-mode t)
(setq show-paren-style 'expression)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#eaeaea" "#d54e53" "DarkOliveGreen3" "#e7c547" "DeepSkyBlue1" "#c397d8" "#70c0b1" "#181a26"))
 '(custom-enabled-themes (quote (cyber)))
 '(fci-rule-color "#14151E")
 '(hl-sexp-background-color "#1c1f26")
 '(linum-format " %5i ")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "goldenrod")
     (60 . "#e7c547")
     (80 . "DarkOliveGreen3")
     (100 . "#70c0b1")
     (120 . "DeepSkyBlue1")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "goldenrod")
     (200 . "#e7c547")
     (220 . "DarkOliveGreen3")
     (240 . "#70c0b1")
     (260 . "DeepSkyBlue1")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "goldenrod")
     (340 . "#e7c547")
     (360 . "DarkOliveGreen3"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
