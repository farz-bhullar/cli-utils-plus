module CLIUtilsPlus
  class Spinner
    FRAMES = %w[| / - \\]

    def initialize(message = "Loading")
      @message = message
      @running = false
    end

    def start
      @running = true
      Thread.new do
        i = 0
        while @running
          print "\r#{@message} #{FRAMES[i % FRAMES.size]}"
          sleep 0.1
          i += 1
        end
      end
    end

    def stop
      @running = false
      print "\r#{@message} done.\n"
    end
  end
end