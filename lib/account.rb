class Account

  DEFAULT_BALANCE = 0

  attr_accessor :balance, :transactions

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
    @transactions.push(
      {
        date: date,
        credit: amount,
        debit: 0,
        balance: @balance
      }
    )
  end

  def withdraw(amount, date)
    @balance -= amount
    @transactions.push(
      {
        date: date,
        credit: 0,
        debit: amount,
        balance: @balance
      }
    )
  end

end
