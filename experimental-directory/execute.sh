#!/bin/bash
cd stanford-corenlp-full-2018-10-05/
java -mx4g -cp "*" edu.stanford.nlp.pipeline.StanfordCoreNLPServer -port 9001 -timeout 45000 &
JAVA_PID=$!
echo $JAVA_PID > ../java_server.pid
cd ../
bash srl-4.31/srl-20131216/scripts/run_http_server.sh 8071 '/home/adrian/Desktop/QASystems/Text2ALM/resources/models/eng' &
HTTP_PID=$!
echo $HTTP_PID > http_server.pid
sleep 30
cd ../
python CommandCenter.py text2alm --input $1
echo $(basename $1)