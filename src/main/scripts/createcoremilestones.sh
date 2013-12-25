#/bin/sh

curl -k -u "$2:$3" -d "{\"title\":\"Thymeleaf 2.0\"}" https://api.github.com/repos/thymeleaf/$1/milestones
curl -k -u "$2:$3" -d "{\"title\":\"Thymeleaf 2.1\"}" https://api.github.com/repos/thymeleaf/$1/milestones
curl -k -u "$2:$3" -d "{\"title\":\"Thymeleaf 3.0\"}" https://api.github.com/repos/thymeleaf/$1/milestones
curl -k -u "$2:$3" -d "{\"title\":\"Wish List / Future Work\"}" https://api.github.com/repos/thymeleaf/$1/milestones
curl -k -u "$2:$3" -d "{\"title\":\"No Milestone Required\"}" https://api.github.com/repos/thymeleaf/$1/milestones

