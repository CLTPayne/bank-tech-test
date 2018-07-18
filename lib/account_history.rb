class AccountHistory

  DEFAULT_AMOUNT = 0

  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(date: date, credit: DEFAULT_AMOUNT, debit: DEFAULT_AMOUNT, balance: DEFAULT_AMOUNT)
    @transactions.push(
      {
        date: date,
        credit: credit,
        debit: debit,
        balance: balance
      }
    )
  end

end
