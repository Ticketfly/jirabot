#!/bin/bash

docker pull ticketfly/jirabot

docker run --restart=on-failure -d -e SLACK_API_TOKEN=$SLACK_API_TOKEN -e JIRA_USER=$JIRA_USER -e JIRA_PASS=$JIRA_PASS -e JIRA_PREFIX=$JIRA_PREFIX ticketfly/jirabot