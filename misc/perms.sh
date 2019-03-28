#!/bin/bash
#chmod +x ./*.sh

find . -type f -iname '*sh' | xargs -i chmod +x {}
