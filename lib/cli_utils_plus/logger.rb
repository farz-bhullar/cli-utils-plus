module CLIUtilsPlus
  module Logger
    def self.log_info(message)
      puts "[INFO #{Time.now.strftime('%H:%M:%S')}] #{message}"
    end

    def self.log_error(message)
      warn "[ERROR #{Time.now.strftime('%H:%M:%S')}] #{message}"
    end
  end
end