
gem 'minitest'

begin
  require 'turn/autorun'
rescue LoadError
  require 'minitest/autorun'
end
