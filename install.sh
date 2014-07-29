#!/bin/bash
set -x
BASE_USER=funroll
BASE_REPO=devenv
BASE_URL=https://raw.githubusercontent.com/$BASE_USER/$BASE_REPO/master
remote_url ()
{
	
}
remote_run ()
{
	curl $BASE_URL/$1 | sh
}

remote_run bootstrap-coffee.sh
remote_run main.coffee
