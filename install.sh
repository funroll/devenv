#!/bin/bash
BASE_URL=https://raw.githubusercontent.com/funroll/devenv/master
remote_run ()
{
	curl $BASE_URL/$1 | sh
}

remote_run bootstrap-coffee.sh
remote_run main.coffee
