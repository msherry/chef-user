#
# Cookbook Name:: user
# Attributes:: default
#
# Author:: Fletcher Nichol <fnichol@nichol.ca>
#
# Copyright 2011, Fletcher Nichol
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case platform
when 'debian','ubuntu','redhat','centos','fedora','freebsd'
  default['user']['home_root']      = "/home"
  default['user']['default_shell']  = "/bin/bash"
when 'openbsd'
  default['user']['home_root']      = "/home"
  default['user']['default_shell']  = "/bin/ksh"
when 'max_os_x'
  default['user']['home_root']      = "/Users"
  default['user']['default_shell']  = "/bin/bash"
else
  default['user']['home_root']      = nil
  default['user']['default_shell']  = nil
end