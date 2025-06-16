#!/usr/bin/env bash
# filepath: c:\Users\Manju A\judge\judge0\bin\render-build.sh
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate