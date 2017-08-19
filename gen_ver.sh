#!/bin/bash
export VERSION=`cat lib/chef/provisioning/virtualbox_driver/version.rb |grep VERSION|awk '{print $3}'|sed "s/\'//g"'`
