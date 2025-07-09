module CLIUtilsPlus
  module Color
    COLORS = {
      red:    31,
      green:  32,
      yellow: 33,
      blue:   34,
      magenta: 35,
      cyan:   36
    }

    def self.colorize(text, color)
      "\e[#{COLORS[color]}m#{text}\e[0m"
    end
  end
end