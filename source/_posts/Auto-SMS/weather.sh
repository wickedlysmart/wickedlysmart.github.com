#!/bin/bash
curl --silent "http://xml.weather.yahoo.com/forecastrss?w=1132599&u=c" | grep 'Forecast:' -A 1 | sed -e '/Forecast:/d' -e 's/<br \/>//' -e 's/<b>//' -e 's/<\/b>//' | sed -e 's/<BR \/>//' | sed -e 's/<BR \/>//' |tr -d '\n'
printf " Current: " -n ; curl --silent "http://weather.yahooapis.com/forecastrss?w=1132599&u=c" | grep -E '(Current Conditions:|C<BR)' | sed -e '/Current Conditions:/d' -e 's/<br \/>//' -e 's/<b>//' -e 's/<\/b>//' -e 's/<BR \/>//' -e 's/<description>//' -e 's/<\/description>//'