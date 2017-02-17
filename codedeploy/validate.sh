#!/bin/bash
# ensure node processes are running
ps aux | grep node
# Check for web response
sleep 5
curl http://localhost:3000
