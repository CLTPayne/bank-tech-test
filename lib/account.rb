class Account

  DEFAULT_BALANCE = 0

  attr_accessor :balance

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def deposit(amount, date)
    @balance += amount
  end

end
