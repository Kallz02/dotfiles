#!/bin/bash
export $(dbus-launch)
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P)"
#boot polybar based on the number of monitors foun
if [ -x "$(command -v polybar)" ]; then
  pkill polybar
  monitors="$(polybar -m | sed s/:.*// | tac)"
  while read -r display; do
  polybar -c "$SCRIPTPATH/polybar.config" mainbar &> /dev/null &
  done <<< "$monitors"
  
fi
