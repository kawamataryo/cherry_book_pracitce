class Ticket
  attr_accessor :enter_gate
  attr_reader :far

  def initialize(far)
    @far = far
  end
end
