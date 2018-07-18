class Account

  DEFAULT_BALANCE = 0

  attr_accessor :balance, :account_history

  def initialize(account_history = AccountHistory.new)
    @balance = DEFAULT_BALANCE
    @account_history = account_history
  end

  def deposit(amount)
    @balance += amount
    account_history.add_transaction(credit: amount, balance: @balance)
  end

  def withdraw(amount)
    @balance -= amount
    account_history.add_transaction(debit: amount, balance: @balance)
  end

end
