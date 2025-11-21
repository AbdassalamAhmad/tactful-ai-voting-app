#!/bin/sh

# Use ENV variables with defaults
HOST="${VOTE_HOST:-vote-service}"
PORT="${VOTE_PORT:-8080}"

# create 3000 votes (2000 for option a, 1000 for option b)
ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" http://$HOST:$PORT/
ab -n 1000 -c 50 -p postb -T "application/x-www-form-urlencoded" http://$HOST:$PORT/
ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" http://$HOST:$PORT/