class Account

  DEFAULT_BALANCE = 0

  attr_accessor :balance, :transactions

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
    add_transaction(amount, date, :deposit)
  end

  def withdraw(amount, date)
    @balance -= amount
    add_transaction(amount, date, :withdraw)
  end

  private

  def add_transaction(amount, date, type)
    if type === :deposit
      credit_transaction(amount, date)
    elsif type === :withdraw
      debit_transaction(amount, date)
    end
  end

  def credit_transaction(amount, date)
    @transactions.push(
      {
        date: date,
        credit: amount,
        debit: 0,
        balance: @balance
      }
    )
  end

  def debit_transaction(amount, date)
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
