#!/bin/bash
JAVA_PID=X
HTTP_PID=Y
JAVA_PID_FILE="java_server.pid"
HTTP_PID_FILE="http_server.pid"
while IFS= read -r line
do
    JAVA_PID=$line
done <"$JAVA_PID_FILE"
while IFS= read -r line
do
    HTTP_PID=$line
done <"$HTTP_PID_FILE"
kill $JAVA_PID
kill $HTTP_PID