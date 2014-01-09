#
# Cookbook Name:: php55
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'yum-remi::php55'

node['php55']['packages'].each do |pkg|
  package pkg do
    action :upgrade
  end
end

template "#{node['php']['conf_dir']}/php.ini" do
  owner 'root'
  group 'root'
  mode 0644

  %w{apache2 php-fpm}.each do |svc|
    if node.recipe? svc
      notifies :reload, "service[#{svc}]"
    end
  end
end

