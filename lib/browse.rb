require 'mechanize'
require 'active_support/core_ext'

module Browse
end

directory = Pathname.new(File.dirname(__FILE__))
Dir.glob(directory.join('browse', '*.rb')) { |file| require file }
Dir.glob(directory.join('mechanize', '*.rb')) { |file| require file }
