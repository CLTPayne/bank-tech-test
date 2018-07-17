class AccountHistory

  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(amount, date, type, balance)
    if type === :deposit
      credit_transaction(amount, date, balance)
    elsif type === :withdraw
      debit_transaction(amount, date, balance)
    end
  end

  private

  def credit_transaction(amount, date, balance)
    @transactions.push(
      {
        date: date,
        credit: amount,
        debit: 0,
        balance: balance
      }
    )
  end

  def debit_transaction(amount, date, balance)
    @transactions.push(
      {
        date: date,
        credit: 0,
        debit: amount,
        balance: balance
      }
    )
  end

end
