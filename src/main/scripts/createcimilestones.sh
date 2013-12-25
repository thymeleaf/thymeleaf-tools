#/bin/sh

curl -k -u "$2:$3" -d "{\"title\":\"Thymeleaf CI\"}" https://api.github.com/repos/thymeleaf/$1/milestones
curl -k -u "$2:$3" -d "{\"title\":\"Wish List / Future Work\"}" https://api.github.com/repos/thymeleaf/$1/milestones
curl -k -u "$2:$3" -d "{\"title\":\"No Milestone Required\"}" https://api.github.com/repos/thymeleaf/$1/milestones

