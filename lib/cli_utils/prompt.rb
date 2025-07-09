module CLIUtils
  module Prompt
    def self.ask(message, default = nil)
      print "#{message}"
      print " [#{default}]" if default
      print ": "
      input = gets.strip
      input.empty? && default ? default : input
    end

    def self.confirm?(message)
      print "#{message} (y/n): "
      input = gets.strip.downcase
      input == 'y'
    end
  end
end