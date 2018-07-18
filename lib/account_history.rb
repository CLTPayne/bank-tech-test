class AccountHistory

  DEFAULT = 0

  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(date: today, credit: DEFAULT,
    debit: DEFAULT, balance: DEFAULT)
    @transactions.push(
      {
        date: Time.now.strftime("%d/%m/%Y"),
        credit: credit,
        debit: debit,
        balance: balance
      }
    )
  end

end
