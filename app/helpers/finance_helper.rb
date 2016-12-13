module FinanceHelper

  def to_hst(price_in_cents)
    # price + (price * 0.13)
    price_in_cents + (price_in_cents * 0.13)
  end

  def to_currency(price)
    "$ #{price}"
  end

end
