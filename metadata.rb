maintainer       "Innovation Factory"
maintainer_email "info@innovationfactory.eu"
license          "Apache 2.0"
description      "Installs/Configures cloudfoundry-stager"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{ ubuntu }.each do |os|
  supports os
end

%w{ cloudfoundry-common }.each do |cb|
  depends cb
end
