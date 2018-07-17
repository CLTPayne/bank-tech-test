require 'statement'

describe Statement do

  describe '.header' do
    it 'returns a statement header' do
      expect(Statement.header).to eql("date || credit || debit || balance")
    end
  end

  describe '.to_string' do
    it 'converts a transaction hash into a human readable string' do
      hash = {
        date: "10/01/2012",
        credit: 1000,
        debit: 0,
        balance: 1000
      }
      transaction = "10/01/2012 || 1000.00 || || 1000.00 "
      expect(Statement.to_string(hash)).to eql(transaction)
    end
  end

  describe '.display_statement' do

    transaction_log = [
      { date: "10/01/2012",
        credit: 1000,
        debit: 0,
        balance: 1000
      },
      {
        date: "13/01/2012",
          credit: 2000,
          debit: 0,
          balance: 3000
      },
      { date: "14/01/2012",
        credit: 0,
        debit: 500,
        balance: 2500
      },
    ]

    it 'displays a tidy history of account transactions' do
      transaction_history = double('transaction_history', :transactions => transaction_log)
      statement =
      "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00 \n13/01/2012 || 2000.00 || || 3000.00 \n10/01/2012 || 1000.00 || || 1000.00 "
      expect(Statement.display_statement(transaction_history)).to eql(statement)
    end

  end

end
