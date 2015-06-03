class Matrix
  attr_reader :rows

  def initialize(str)
    @rows = format(str)
  end

  def columns
    @rows.transpose
  end

  def format(str)
    str.split("\n").map do |row|
      row.split(" ").map(&:to_i)
    end
  end
end
