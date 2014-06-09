#
# Cookbook Name:: chef-logstash
# Recipe:: server
#
# Copyright (C) 2014 Wouter de Vos
# 
# License: MIT
#

# Create directory for logstash
directory "/etc/logstash" do
  action :create
  mode '0755'
end

directory "/etc/logstash/conf.d" do
  action :create
  mode '0755'
end

template "/etc/logstash/conf.d/server.conf" do
  source "logstash.conf.erb"
  variables( :config => node[:logstash][:server] )
end
