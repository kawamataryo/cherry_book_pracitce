class ConvertLength
  UNIT = { m: 1, ft: 3.28, in: 39.37 }.freeze

  def execute(num, from, to)
    (num * UNIT[from] / UNIT[to]).round(3)
  end
end
