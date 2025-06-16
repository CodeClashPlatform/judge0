#!/usr/bin/env bash
set -o errexit

bundle install
rake db:migrate
rake db:seed # if you need to seed data