pipeline {
    agent any
     environment {
        VERSION = '0.0.0'
    }
    stages {
    stage('ship') {
      steps {
            echo 'Build Gem'
            sh gem build chef-provisioning-virtualbox.gemspec
            sh '''VERSION=`cat lib/chef/provisioning/virtualbox_driver/version.rb |grep VERSION|awk '{print $3}'|sed "s/\'//g"`'''
            sh gem push chef-provisioning-virtualbox-${VERSION}
      }
    }
  }
}