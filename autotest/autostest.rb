require 'autotest/growl'
require 'autotest/restart'
require 'autotest/timestamp'

Autotest.add_hook :initialize do |autotest|
  autotest.add_mapping(%r%^spec/(requrests)/.*rb$%) do
|filename, _|
filename
end
end

Autotest::Growl::clear_terminal = false
