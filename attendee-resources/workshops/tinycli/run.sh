#!/bin/bash
set -e
cat /message.txt
curl "$@"
