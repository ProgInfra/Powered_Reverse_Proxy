#!/bin/bash


# Git Setup Multiple Repository
git remote add gitlab git@gitlab.com:proginfra/powered_reverse_proxy.git
git remote set-url --add --push origin git@gitlab.com:proginfra/powered_reverse_proxy.git

git remote add github git@github.com:ProgInfra/Powered_Reverse_Proxy.git
git remote set-url --add --push origin git@github.com:ProgInfra/Powered_Reverse_Proxy.git


# Display Config
git remote show origin

git config --list
