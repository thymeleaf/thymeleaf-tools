#/bin/sh
curl -k -u "$2:$3" -d "{\"name\":\"$4\",\"color\":\"$5\"}" https://api.github.com/repos/thymeleaf/$1/labels

