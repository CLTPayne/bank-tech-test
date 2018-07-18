class Account

  DEFAULT_BALANCE = 0

  attr_accessor :balance, :account_history

  def initialize(account_history = AccountHistory.new)
    @balance = DEFAULT_BALANCE
    @account_history = account_history
  end

  def deposit(amount, date)
    @balance += amount
    account_history.add_transaction(date: date, credit: amount, balance: @balance)
  end

  def withdraw(amount, date)
    @balance -= amount
    account_history.add_transaction(date: date, debit: amount, balance: @balance)
  end

end
