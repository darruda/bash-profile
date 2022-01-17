alias ssh-auth='eval `ssh-agent -s`'
alias pdf-compress='gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=compressed-output.pdf'
alias pdf-merge='gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -sOutputFile=combined-output.pdf'
alias start-foreman='foreman start -f Procfile.local'
alias start-sidekiq='EAGER_LOAD=true bundle exec sidekiq'
alias be='bundle exec'
alias docker-ips="docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Name }}' | sed 's/ \// /'"
alias youtube-dl-audio='youtube-dl -x --audio-format mp3 --audio-quality 0 --prefer-ffmpeg -f 140'
alias workspace='cd ~/Workspace'
