#/bin/sh
curl -k -u "$2:$3" -d "{\"name\":\"version:$4\",\"color\":\"d4c5f9\"}" https://api.github.com/repos/thymeleaf/$1/labels

