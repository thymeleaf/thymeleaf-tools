#/bin/sh

REPOS=( thymeleaf thymeleaf-spring3 thymeleaf-spring4 thymeleaf-docs thymeleaf-testing thymeleaf-tests thymeleaf-dist thymeleaf.github.com thymeleaf-itutorial thymeleaf-tools thymeleaf-extras-tiles2 thymeleaf-extras-springsecurity3 thymeleaf-extras-conditionalcomments thymeleaf-extras-eclipse-plugin thymeleafexamples-gtvg thymeleafexamples-stsm thymeleafexamples-extrathyme thymeleafexamples-sayhello thymeleafexamples-petclinic thymeleafexamples-thvsjsp thymeleafexamples-springmail thymeleafexamples-springsecurity thymeleafsandbox-springjsp thymeleafexamples-layouts )

for a in "${REPOS[@]}"
do
    "$1" "${a}" "$2" "$3" "$4" "$5" "$6" "$7"
done

