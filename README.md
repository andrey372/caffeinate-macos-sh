# caffeinate-macos-sh
how to keep your MacBook awake, even when the lid is closed

**caffeinate_timer.sh** - shell script that will automate the process of deactivating and then reactivating lid-sleep for 3600 seconds (1 hour).

don't forget execute permissions:
  chmod 700 caffeinate_timer.sh

# usage:
Run the script normally. If at any point you wish to stop it before the duration ends, simply press Ctrl+C, and the script will restore the sleep settings and exit.

Adjust **$DURATION** for desired time in seconds.
