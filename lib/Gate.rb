class Gate
  UMEDA_PRICE_TABLE = { jyuso: 150, mikuni: 190 }.freeze
  JYUSO_PRICE_TABLE = { umeda: 150, mikuni: 150 }.freeze
  MIKUNI_PRICE_TABLE = { jyuso: 150, umeda: 190 }.freeze

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.enter_gate = @name
  end

  def exit(ticket)
    case ticket.enter_gate
    when :umeda
      ticket.far >= UMEDA_PRICE_TABLE[@name]
    when :jyuso
      ticket.far >= JYUSO_PRICE_TABLE[@name]
    when :mikuni
      ticket.far >= MIKUNI_PRICE_TABLE[@name]
    else
      nil
    end
  end
end
