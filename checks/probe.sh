#!/bin/sh
# The crackme sends its encrypted challenge as a long hexadecimal number.
# The service runs the challenge in nsjail for each connection and greets the player first.
(sleep 4) | curl -sS --max-time 6 telnet://challenge:1337 2>/dev/null | grep -q "[0-9A-F]\{64\}"
