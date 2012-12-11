#
# Cookbook Name:: svn_ssh
#
# Copyright 2012, Abine, Inc.
#
# All rights reserved - Do Not Redistribute
#

action :update do
  file '/tmp/chefkey' do
    owner 'root'
    group 'root'
    mode '0600'
    backup false
    content new_resource.ssh_key
  end
  
  directory new_resource.destination do
    recursive true
  end
  
  execute "svn checkout svn+ssh://#{new_resource.repo_location} #{new_resource.destination}" do
    environment({'SVN_SSH' => "ssh -i /tmp/chefkey -l #{new_resource.ssh_user} -o StrictHostKeyChecking=no"})
  end
  
  file '/tmp/chefkey' do
    action :delete
  end
end
