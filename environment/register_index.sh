#!/bin/bash

#curl -XDELETE localhost:9200/$1/

sleep 1

ruby -ryaml -rjson -e 'puts JSON.dump(YAML.load(ARGF.read))' $1.yml \
    | curl -XPUT localhost:9201/$1/ -d '@-'
