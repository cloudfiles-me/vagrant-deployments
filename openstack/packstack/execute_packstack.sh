#!/bin/bash

sudo /usr/bin/packstack --answer-file /vagrant/packstack/answer.ini &> /vagrant/packstack/packstack.log
exit