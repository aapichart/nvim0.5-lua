#!/bin/bash
import -window root /tmp/screenshot.png
convert /tmp/screenshot.png -spread 6 /tmp/screenshotblur.png
rm /tmp/screenshot.png
i3lock -i /tmp/screenshotblur.png