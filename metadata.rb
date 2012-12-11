maintainer       "Abine, Inc."
maintainer_email "cloud@abine.com"
license          "All rights reserved"
description      "Installs/Configures svn_ssh"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends 'rightscale'

recipe 'svn_ssh::default', "Set up provider for SVN+SSH"

attribute 'svn_ssh/repo_location',
  :display_name => "Repository Hostname",
  :description => "Location of repository (FQDN with no protocol). Example: dev.tripjar.com",
  :required => "required",
  :recipes => ['svn_ssh::default']

attribute 'svn_ssh/ssh_key',
  :display_name => "Repository SSH Key",
  :description => "SSH Key that can be used to access the repository.",
  :required => "required",
  :recipes => ['svn_ssh::default']

attribute 'svn_ssh/ssh_user',
  :display_name => "Repository SSH User",
  :description => "Name of user to connect as during SSH connection.",
  :required => "required",
  :recipes => ['svn_ssh::default']
