
require 'i18n'

# Load default locales
I18n.load_path += Dir["#{File.dirname(__FILE__)}/locales/*.yml"]
