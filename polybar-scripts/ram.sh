#!/bin/bash

 free -m | awk 'NR==2{printf " RAM: %s/%s MB", $3,$2,$3*100/$2 }' 
