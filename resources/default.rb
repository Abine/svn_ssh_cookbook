#
# Cookbook Name:: svn_ssh
#
# Copyright 2012, Abine, Inc.
#
# All rights reserved - Do Not Redistribute
#
actions :update

attribute :destination,   :kind_of => String
attribute :ssh_key,       :kind_of => String
attribute :repo_location, :kind_of => String
attribute :ssh_user,      :kind_of => String
