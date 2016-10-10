(require 'elfeed)

;; Feeds repository
(setq elfeed-feeds
      '("http://blog.jullie.org/feed/"
	"http://feeds.feedburner.com/tom-preston-werner"
	"https://lwn.net/headlines/rss"
        "https://this-week-in-rust.org/rss.xml"
        "https://blog.servo.org/feed.xml"
        "http://llvmweekly.org/"
        "https://krebsonsecurity.com/feed/"
        "https://blog.torproject.org/blog/feed"
        "http://feeds.feedburner.com/tuxicity"
        "http://www.aljazeera.com/xml/rss/all.xml"
        "http://mg.co.za/feeds/"
        "http://www.mst.org.br/rss.xml"))

(setq-default elfeed-search-filter "@1-year-old +unread ")

(global-set-key (kbd "C-c r") 'elfeed)
