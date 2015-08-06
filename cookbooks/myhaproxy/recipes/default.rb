#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [
  {
    'hostname' => 'ec2-54-172-190-60.compute-1.amazonaws.com',
    'ipaddress' => '54.172.190.60',
    'port' => 80,
    'ssl_port' => 80
  },{
    'hostname' => 'ec2-52-4-58-39.compute-1.amazonaws.com',
    'ipaddress' => '52.4.58.39',
    'port' => 80,
    'ssl_port' => 80
  }
]

include_recipe 'haproxy::default'
