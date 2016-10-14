alias docker-clean-img='docker rmi $(docker images | awk "/^<none>/ { print \$3}")'
alias docker-clean-con='docker rm $(docker ps -aq | awk "!/Up|^CONTAINER/ { print \$1 }")'
alias docker-php-remote="docker run -it -v /home/michael/workspace/:/var/www -p 22:22 -p 80:80 --net dockernet --ip=172.18.0.2 ${1:-'mickadoo/php7'} /bin/bash"

