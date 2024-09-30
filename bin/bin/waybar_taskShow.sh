#!/bin/sh

tasks=$(cat ~/.local/bin/tasks.md | sed ':a;N;$!ba;s/\n/\\n/g');

tooltip=$tasks;

text=$(~/.local/bin/waybar_GetCurrentTask.py "$tasks");

echo "{\"text\":\"$text\", \"tooltip\":\"$tooltip\"}"