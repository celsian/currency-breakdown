class Currency
  def initialize(*denominations)
    if denominations.first != nil
      @denominations = denominations
    else 
      @denominations = [100.00, 50.00, 20.00, 10.00, 5.00, 1.00, 0.25, 0.10, 0.05, 0.01]
    end
  end

  def denominations
    @denominations
  end
end