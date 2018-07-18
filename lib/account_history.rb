class AccountHistory

  DEFAULT = 0

  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(date: Time.now.strftime("%d/%m/%Y"),
    credit: DEFAULT, debit: DEFAULT, balance: DEFAULT)
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
