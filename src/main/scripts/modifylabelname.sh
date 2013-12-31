#/bin/sh
curl -k -u "$2:$3" -X PATCH -d "{\"name\":\"$5\"}" https://api.github.com/repos/thymeleaf/$1/labels/$4

