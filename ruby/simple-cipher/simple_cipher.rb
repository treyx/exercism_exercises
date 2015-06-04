class Cipher
  attr_reader :key

  def initialize(key=random_key)
    @key = key
    raise ArgumentError unless key[/[a-z]/]
  end

  def encode(text)
    text.chars.each_with_index.map do |char, index|
      code = ((key[index % key.length].ord - 97) % 26) + char.ord
      code = 97 + ((code - 97) % 26) if code > 122
      code.chr
    end.join
  end

  def decode(text)
    text.chars.each_with_index.map do |char, index|
      code = (char.ord - ((key[index % key.length].ord - 97) % 26))
      code = 122 - ((96 - code) % 26) if code < 97
      code.chr
    end.join
  end

  private

  def random_key
    (0...100).map { (97 + rand(26)).chr }.join
  end
end
