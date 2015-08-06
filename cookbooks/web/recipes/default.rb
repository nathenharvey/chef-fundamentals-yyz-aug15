#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package node['apache']['package']

service node['apache']['service'] do
  action :start
end

template "#{node['apache']['docroot']}/index.html"
