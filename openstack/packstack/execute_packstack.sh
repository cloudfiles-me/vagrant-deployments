#!/bin/bash

deployment_type="$1"

case $deployment_type in
    -a|allin)
      sudo /usr/bin/packstack --answer-file /vagrant/packstack/answer_allin.ini &> /vagrant/packstack/packstack.log
      # echo "ALL IN"
    ;;
    -d|distributed)
      sudo /usr/bin/packstack --answer-file /vagrant/packstack/answer.ini &> /vagrant/packstack/packstack.log
      # echo "DISTRIBUTED"
    ;;
    *)
      sudo /usr/bin/packstack --answer-file /vagrant/packstack/answer_allin.ini &> /vagrant/packstack/packstack.log
      # echo "DEFAULT"
    ;;
esac

exit