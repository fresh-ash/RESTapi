#!/bin/bash
GIT_ROOT=$(git rev-parse --show-toplevel)
source $GIT_ROOT/actions.sh

change(){
  #В этой функции оно переданные параметры опять позиционирует с $1 и так далее
  case $1 in
  alb|ALB)
    run_for_alb $2 $3 $4
    ;;
  rds|RDS)
    run_for_rds $2 $3 $4
    ;;
  ##################
  esac
}

#А где-то тут и второй параметр $2 будем использовать
