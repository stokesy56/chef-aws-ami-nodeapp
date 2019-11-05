#
# Cookbook:: mongodb_1
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#include_recipe 'sc-mongodb::mongodb_org_repo' if node['mongodb']['install_method'] == 'mongodb-org'
apt_update 'update_sources' do
  action :update
end

apt_repository 'mongodb-org' do
  uri 'http://repo.mongodb.org/apt/ubuntu'
  distribution 'xenial/mongodb-org/3.2'
  components ['multiverse']
  keyserver 'hkp://keyserver.ubuntu.com:80'
  key 'EA312927'
  action :add
end

template '/etc/mongod.conf' do
  source 'mongod.conf.erb'
  variables(port_number: node["mongod"]["port_number_27017"])
  notifies :restart, 'service[mongod]'
  # mode '0755'
  # owner 'root'
  # group 'root'
end

template '/lib/systemd/system/mongod.service' do
  source 'mongod.service.erb'
  #variables(proxy_port: node["mongod"]["proxy_port_27017"])
  # mode '0600'
  # owner 'root'
  # group 'root'
end

package 'mongodb-org' do
  options '--allow-unauthenticated'
  action :install
end

service 'mongod' do
  action [ :enable, :start ]
end

# service 'mongod' do
#   action :start
# end
