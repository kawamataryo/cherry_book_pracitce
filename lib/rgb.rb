class Rgb
  def to_hex(r, g, b)
    "##{[r, g, b].map(&method(:convert_decimal_number_to_hex)).join}"
  end

  def to_ints(hex)
    hex.scan(/\w\w/).map(&:hex)
  end

  private

  def convert_decimal_number_to_hex(num)
    num.to_s(16).rjust(2, '0')
  end

end
