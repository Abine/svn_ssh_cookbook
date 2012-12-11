Description
===========
Simple LWRP for accessing SVN repositories from SSH. Does very little

Attributes
==========
 * [:svn_ssh][:repo_location] Where the repo is located
 * [:svn_ssh][:ssh_key] SSH Key
 * [:svn_ssh][:ssh_user] User to use during SSH call
Usage
=====
Run the default cookbook to install the subversion client.

Call the update resource to download the code.
