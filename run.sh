#!/bin/bash

export HUBOT_SLACK_TOKEN=15QvMdcyjsS5IdZP4c1qVtkf
export HUBOT_SLACK_TEAM=luckystars
export HUBOT_SLACK_BOTNAME=slackbot

PROJECT_ROOT=$HOME/deploy/lucky_bot
COFFEE_BIN=$PROJECT_ROOT/node_modules/hubot/node_modules/coffee-script/bin/coffee

cd $PROJECT_ROOT
forever start -c $COFFEE_BIN node_modules/.bin/hubot -a slack
