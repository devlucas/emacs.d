;; to be done

(prodigy-define-tag
  :name 'edusim)

(prodigy-define-tag
  :name 'springboot
  :ready-message "Listening on 0\\.0\\.0\\.0:[0-9]+, CTRL\\+C to stop")

(prodigy-define-tag
  :name 'webrick
  :ready-message "WEBrick::HTTPServer#start: pid=[0-9]+ port=[0-9]+")

(prodigy-define-tag
  :name 'mongrel
  :ready-message "Ctrl-C to shutdown server")

(prodigy-define-tag
  :name 'rails
  :tags '(thin mongrel webrick))

(prodigy-define-service
  :name "Rails Project"
  :command "bundle"
  :args '("exec" "rails" "server")
  :cwd "/path/to/my/project"
  :tags '(rails))

(prodigy-define-service
  :name "Thin Project"
  :command "bundle"
  :args '("exec" "thin" "start")
  :cwd "/path/to/my/project"
  :tags '(thin))
