#/bin/sh
curl -k -u "$2:$3" -X GET https://api.github.com/repos/thymeleaf/$1/labels
