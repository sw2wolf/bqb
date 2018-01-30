;export EMAIL="you@domain.com"
;export NAME="Your Full Name"
;export SMTPSERVER="your.smtp-server.com"
(setq user-full-name "sw2wolf"
      user-mail-address "sw2wolf@xxx.com")

(setq gnus-posting-styles '( 
    (".*" (signature-file "~/.emacs.d/gnus/.signature_english")) 
    ("cn.*" (signature-file "~/emacs.d/gnus/.signature_chinese")) 
))

;; set mail folder 
;; (setq nnmail-split-methods '( 
;;     ("Emacs.org-mode" "^To:.emacs-orgmode@gnu.org")
;;     ("Emacs.general" "^Subject:.*emacs")
;;     ("Email.personal" "^To:*.@163.com")
;;     ("Email.errors" "^From:.*\\(mailer.daemon\\|postmaster\\)")
;; ))

(define-key gnus-summary-mode-map (kbd "Backspace") 
  'gnus-summary-prev-page)
;;;
(setq gnus-select-method '(nntp "freenews.netfront.net"))
(setq gnus-secondary-select-methods '(
    ;(nntp "localhost")
    ;(nnmaildir "" (directory "~/Mail/"))
	(nnml "")  ;(nnfolder "")
    (nnimap "hotmail"
        (nnimap-address "imap-mail.outlook.com")
        (nnimap-server-port 993))
		;(nnimap-list-pattern "archive.*")
        ;(nnimap-stream ssl)
))

(setq smtpmail-smtp-server "smtp-mail.outlook.com"
      smtpmail-smtp-service 587
      gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")

(setq send-mail-function		  'smtpmail-send-it
	  message-send-mail-function  'smtpmail-send-it)


;; (eval-after-load "gnutls"
;; '(progn
;;    (setq gnutls-trustfiles '(
;;         "c:/Dropbox/Sys/cygwin/usr/ssl/certs/ca-bundle.trust.crt"
;; 		"c:/Dropbox/Sys/cygwin/usr/ssl/certs/ca-bundle.crt"))))

;; (setq message-send-mail-function 'message-send-mail-with-sendmail
;;       sendmail-program "msmtp")
;; msmtp 是个短小精悍的smtp客户端，顾名思义，它支持管理多个SMTP账户，这
;; 里我只给出Gmail的配置：
;; account gmail
;; host smtp.gmail.com
;; tls on
;; tls_certcheck off
;; tls_starttls on
;; auth on
;; user username@gmail.com
;; password gmail_password
;; port 587

