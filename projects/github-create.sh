#! /bin/bash
#purpose:creating remote repository on github using github API
#date of creation :07/07/20
#author : vinay chowdary
#start

REPONAME=$1

if [[ -z $REPONAME ]]
then
    echo "please provide repository name"
    exit 1
fi


# token is personal access token provided by github to access account by github api
curl -H "Authorization: token $TOKEN" https://api.github.com/user/repo -d '{\"name\":\"${REPONAME}\"}'

#end
