class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/\[.*\]:\s*/, '').strip
  end

  def log_level
    if (m = @line.match(/\[(.*)\]/))
      return m[1].downcase
    end
  end

  def reformat
    message + " " + "(#{log_level})"
  end
end
