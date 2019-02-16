class Effects
  def self.reverse
    lambda do |word|
      word.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.loud(times)
    lambda do |word|
      word.split(' ').map {|w| w.upcase + "!" * times}.join(' ')
    end
  end

  def self.echo(times)
    lambda do |word|
      word.chars.map {|c| c == ' ' ? c : c * times}.join
    end
  end
end
