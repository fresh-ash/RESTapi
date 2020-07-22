#!/bin/bash

GIT_ROOT=$(git rev-parse --show-toplevel)
source $GIT_ROOT/main.sh

#Можно и в main.sh это перенести! Я просто не знаю, как оно сработает, бо нам именно в этом файле нужен КОНФИГ

source_config(){
  case $PR in
  channel|CHANNEL)
    source $GIT_ROOT/channel_config.sh
    ;;
  afs|AFS)
    source $GIT_ROOT/afs_config.sh
    ;;
  liqpay|LIQPAY)
    source $GIT_ROOT/liqpay_config.sh
    ;;
    *)

  esac
}

#Сразу же и вызываем, чтобы получить нужный конфиг!

source_config

run_for_alb(){

  get_ip $1 $2 $3
  echo $1
  #Это будет параметр имя проекта!
  echo "ALB"
  #####
}

run_for_rds(){
  echo "RDS"
  #####
}

###############