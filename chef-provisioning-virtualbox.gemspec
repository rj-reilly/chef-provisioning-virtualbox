Gem::Specification.new do |s|
  s.name        = 'chef-provisioning-virtualbox'
  s.version     = '0.1.1'
  s.licenses    = ['MIT']
  s.summary     = "Virtualbox Driver for chef provisioning"
  s.description = "Virtualbox Driver for chef provisioning"
  s.authors     = ["Robert Reilly"]
  s.email       = 'robertjreilly@gmail.com'
  s.files       = ["lib/chef/provisioning/driver_init/virtualbox.rb",
                   "lib/chef/provisioning/virtualbox_driver/driver.rb",
                   "lib/chef/provisioning/virtualbox_driver/version.rb",
                   "lib/chef/provisioning/virtualbox_driver.rb"]
  s.homepage    = 'https://github.com/rj-reilly/chef-provisioning-virtualbox'
end


