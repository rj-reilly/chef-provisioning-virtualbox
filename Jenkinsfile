pipeline {
    agent any
    stages {
    stage('ship') {
      steps {
            echo 'Build Gem'
            sh gem build chef-provisioning-virtualbox.gemspec
            sh gen_ver.sh
            sh gem push chef-provisioning-virtualbox-${VERSION}
      }
    }
  }
}