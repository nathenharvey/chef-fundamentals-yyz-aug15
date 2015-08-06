#
# Cookbook Name:: ssh
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'audit-cis::ubuntu1404-100'

package 'telnet' do
  action :remove
end

control_group 'external access' do
  control 'ssh' do
    it 'listens on port 22' do
      expect(port 22).to be_listening
    end
  end

  control 'telnet' do
    it 'is not installed' do
      expect(package 'telnet').to_not be_installed
    end
  end

end
