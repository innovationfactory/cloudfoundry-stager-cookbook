include_attribute "cloudfoundry-common"

# The Stager's log level.
default['cloudfoundry_stager']['log_level'] = "info"

# Where to write the Stager's logs.
default['cloudfoundry_stager']['log_file'] = File.join(node['cloudfoundry_common']['log_dir'], "stager.log")

# Where to write the Stager's pid file.
default['cloudfoundry_stager']['pid_file'] = File.join(node['cloudfoundry_common']['pid_dir'], "stager.pid")

# Maximum number of seconds a staging can run
default['cloudfoundry_stager']['max_staging_duration'] = 120

# Maximum number of tasks executing concurrently
default['cloudfoundry_stager']['max_active_tasks']     = 10

# List of provided native packages
default['cloudfoundry_stager']['provided_native_packages'] = %w[
 libxslt-dev 
 libxml2-dev
 mysql-client
 lsof 
 psmisc 
 librmagick-ruby
 libxml2
 libxml2-dev
 libxslt1-dev
 mysql-client
]

