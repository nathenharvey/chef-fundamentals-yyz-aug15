#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package_name = 'httpd'

package package_name

service 'httpd' do
  action :start
end

template '/var/www/html/index.html'
