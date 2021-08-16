#! /bin/bash

# Here is where you set up the environment for the app.  This is run as root.
COUNTER=1
while true; do
    sleep $RECONNECT_TIME
    echo "[$(date -Iseconds)] Restarting connection " $COUNTER
    /opt/scripts/vpn-connect.expect
    echo "[$(date -Iseconds)]" $?
    COUNTER=$((COUNTER+1))
done
