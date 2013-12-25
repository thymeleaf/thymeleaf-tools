#/bin/sh
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/tracker:feature
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/tracker:problem
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/tracker:question
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/tracker:task

curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:abandoned
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:answered
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:developed
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:declined
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:done
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:feedback
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:inprogress
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:pending
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:released
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:solved
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:insnapshot
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:underevaluation

curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:completed
curl -k -u "$2:$3" -X DELETE https://api.github.com/repos/thymeleaf/$1/labels/status:snapshot

