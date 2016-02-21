(require 'elfeed)

;; Feeds repository
(setq elfeed-feeds
      '("http://blog.jullie.org/feed/"
	"http://feeds.feedburner.com/tom-preston-werner"
	"https://lwn.net/headlines/rss"))

(global-set-key (kbd "C-c r") 'elfeed)
