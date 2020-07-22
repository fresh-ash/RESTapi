#!/bin/bash

AZ=$1
PR=$2
EL=$3
AC=$4

GIT_ROOT=$(git rev-parse --show-toplevel)
source $GIT_ROOT/change.sh

#Необходимые проверки....

change $AZ $PR $EL $AC