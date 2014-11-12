#!/bin/bash

export HUBOT_SLACK_TOKEN=15QvMdcyjsS5IdZP4c1qVtkf
export HUBOT_SLACK_TEAM=luckystars
export HUBOT_SLACK_BOTNAME=slackbot

forever start -c coffee bin/hubot --adapter slack
