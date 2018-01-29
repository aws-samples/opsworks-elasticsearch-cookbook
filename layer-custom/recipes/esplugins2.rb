#
# Cookbook Name:: opsworks-elasticsearch-cookbook
# Recipe:: esplugins2
#
# Copyright (C) 2014 Bieliaievskyi Sergey
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##


##
# Since we have excellent code in elasticsearch cookbook for plugin installation, my recipe based on it. 
# It has necessary checks and conform to basic principles described in "Test-Driven Infrastructure with Chef":
#
#Idempotence
#Our services should only be configured when required action should only be taken once.
#
##
# README
# attribute default[:es][:plugins] must be defined
# install_plugin is elasticsearch cookbook function
# To use elasticsearch code you need to add (depends "elasticsearch") in metadata.rb file

node.default.elasticsearch[:skip_restart] = true

node[:es][:plugins].each do |plug|
  install_plugin plug
end
