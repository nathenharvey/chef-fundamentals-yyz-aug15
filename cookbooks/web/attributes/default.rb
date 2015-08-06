case node['platform_family']
when 'rhel'
  default['apache']['package'] = 'httpd'
  default['apache']['service'] = 'httpd'
  default['apache']['docroot'] = '/var/www/html'
when 'debian'
  default['apache']['package'] = 'apache2'
  default['apache']['service'] = 'apache2'
  default['apache']['docroot'] = '/var/www'
end
