#/bin/sh
curl -k -u "$2:$3" -d "{\"name\":\"tracker:feature\",\"color\":\"005dc5\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"tracker:problem\",\"color\":\"c10d01\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"tracker:question\",\"color\":\"9b7a04\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"tracker:task\",\"color\":\"5309c7\"}" https://api.github.com/repos/thymeleaf/$1/labels

curl -k -u "$2:$3" -d "{\"name\":\"status:abandoned\",\"color\":\"ffa6a7\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:answered\",\"color\":\"20a820\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:developed\",\"color\":\"bfe5bf\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:declined\",\"color\":\"ffa6a7\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:done\",\"color\":\"20a820\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:feedback\",\"color\":\"a0cbd5\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:inprogress\",\"color\":\"fef2c0\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:pending\",\"color\":\"e0d8c7\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:released\",\"color\":\"20a820\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:solved\",\"color\":\"20a820\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:insnapshot\",\"color\":\"bfe5bf\"}" https://api.github.com/repos/thymeleaf/$1/labels
curl -k -u "$2:$3" -d "{\"name\":\"status:underevaluation\",\"color\":\"d4c5f9\"}" https://api.github.com/repos/thymeleaf/$1/labels

