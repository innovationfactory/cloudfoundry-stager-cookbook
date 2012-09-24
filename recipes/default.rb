#
# Cookbook Name:: cloudfoundry-stager
# Recipe:: default
#
# Copyright 2012, Innovation Factory
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

bin_file = File.join(node.cloudfoundry_common.vcap.install_path, "stager", "bin", "stager")

cloudfoundry_component "stager" do
  env_vars ["PLATFORM_CONFIG=#{File.join(node[:cloudfoundry_common][:staging_manifests_dir],'platform.yml')}"]
end

