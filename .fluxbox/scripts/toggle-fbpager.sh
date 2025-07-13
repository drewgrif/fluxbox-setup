#!/bin/bash
# Toggle fbpager visibility

if pgrep -x fbpager > /dev/null; then
    killall fbpager
else
    # Start fbpager in background and disown it
    fbpager -rc ~/.fluxbox/fbpager/fbpager.config > /dev/null 2>&1 &
    disown
fi