#
# Cookbook Name:: php55
# Recipe:: module_mysql
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'php-mysqlnd' do
  action :upgrade

  # TODO 共通化
  %w{apache2 php-fpm}.each do |svc|
    if node.recipe? svc
      notifies :reload, "service[#{svc}]"
    end
  end
end

