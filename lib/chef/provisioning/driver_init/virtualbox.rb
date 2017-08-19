require 'chef/provisioning/virtualbox_driver/driver'
Chef::Provisioning.register_driver_class('virtualbox', Chef::Provisioning::VirtualboxDriver::Driver)
