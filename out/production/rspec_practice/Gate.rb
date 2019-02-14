class Gate
  PRICE_TABLE = {
      umed: {
          jyuso: 150,
          mikuni: 190
      },
      jyuso: {
          umeda: 150,
          mikuni: 150
      },
      mikuni: {
          umeda: 190,
          jyuso: 150
      }
  }.freeze

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.enter_gate = @name
  end

  def exit(ticket)
    p ticket
    ticket.far >= PRICE_TABLE[ticket.enter_gate][@name]
  end
end
