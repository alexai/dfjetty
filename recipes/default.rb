## Cookbook Name:: dfjetty
# Recipe:: default
#
# Copyright 2012, Demandforce
#
# All rights reserved - Do Not Redistribute
#

#create jetty user

user node['dfjetty']['user'] do
  comment "Jetty User"
end

script "nfs_group" do
   interpreter "bash"
   user "root"
   cwd "/tmp"
   code <<-EOH
     groupadd -g #{node['nfs']['gid']} nfs
     usermod -a -G nfs #{node['dfjetty']['user']}
   EOH
end

bash "Get the jetty rpm from the artifactory" do
  cwd "/tmp"
  user "root"
  code "curl -k --user dfchef:r3dv1nes -O #{node['artifactory']['url']}/#{node['artifactory']['repo_name']}/#{node['dfjetty']['artifactory_path']}/#{node['dfjetty']['rpm_name']}" 
end

bash "Install the jetty" do
  cwd "/tmp"
  user "root"
  code "yes | yum install #{node['dfjetty']['rpm_name']}" 
  not_if "yum list installed | grep jetty | grep #{node['dfjetty']['rpm_version']}"
end
