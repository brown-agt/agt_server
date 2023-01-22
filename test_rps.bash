#!/bin/bash

if [ $# -eq 0 ]; then
            echo "Please provide number of terminals as an argument"
                exit 1
fi

for i in $(seq 1 $1)
do
          bash -c "python agents/random_agent.py Agent_$i" &
done
wait
