class Calc
  def initialize(logger, amount = 0)
    @logger, @amount = logger, amount
  end

  def amount
    @logger.log()
    @amount
  end

  def add(a, b)
    a + b
  end

  def price(a, tax = 0, discount = 1.0)
    a * (1 + tax) * discount
  end
end
