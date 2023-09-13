#!/bin/bash

CURRENT_STATE=`amixer get Master | grep -E 'Playback.*?\[o' | grep -Eo '\[o.+\]'`

if [[ "${CURRENT_STATE:0:4}" == '[on]' ]]; then
    amixer set Master mute
else
    amixer set Master unmute
fi