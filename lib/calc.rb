class Calc
  def add(a, b)
    a + b
  end

  def price(a, tax = 0, discount = 1.0)
    a * (1 + tax) * discount
  end
end
