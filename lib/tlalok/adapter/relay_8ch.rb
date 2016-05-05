require "tlalok/adapter/relay_8ch/version"
require 'thor'

begin
  require 'wiringpi'
rescue LoadError
  require 'tlalok/adapter/relay_8ch/wiringpi'
end

module Tlalok
  module Adapter
    module Relay8ch

    end
  end
end

require 'tlalok/adapter/relay_8ch/cli'
require 'tlalok/adapter/relay_8ch/controller'
