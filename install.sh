#!/bin/bash
BASE_URL=https://raw.githubusercontent.com/funroll/devenv/master
remote_run ()
{
	curl $BASE_URL/$1 | sh
}
remote_coffee ()
{
	curl $BASE_URL/$1 > main.coffee
	chmod u+x main.coffee
	./main.coffee
}

remote_run bootstrap-coffee.sh
remote_coffee main.coffee
