module FinanceHelper

  def to_hst(price_in_cents)
    (price_in_cents / 100).to_d * 1.13
  end

  def to_currency(price)
    "$ #{price}"
  end

end
