#!/bin/bash

cd /homepages/25/d558414169/htdocs/webcams/watch-loesungen/
./checker watcher > /dev/null

if [ $? -eq 0 ]
then
	echo `date` >> ./watch_log
	echo "laeuft" >> ./watch_log
else
	echo `date` >> ./watch_log
	echo "watcher starten" >> ./watch_log
	./watcher /homepages/25/d558414169/htdocs/webcams/vereinsheim /homepages/25/d558414169/htdocs/webcams/vorfeld /homepages/25/d558414169/htdocs/webcams/start25  /homepages/25/d558414169/htdocs/webcams/start07 > /dev/null &
fi
