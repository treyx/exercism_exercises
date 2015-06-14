class Prime

  def self.nth(num)
    array = []
    int = 2

    num_must_be_more_than_zero(num)

    until array.size == num
      array << int if self.is_prime?(int)
      int += 1
    end
    array.last
  end


  private

  def self.is_prime?(int)
    upper = int / 2
    (2..upper).none? { |x| int % x == 0 }
  end

  def num_must_be_more_than_zero(num)
    raise ArgumentError if num == 0
  end
end
