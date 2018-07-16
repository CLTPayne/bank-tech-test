require 'printer'

describe Printer do

  context 'default #initialization' do
    it 'can create a new printer object' do
      expect { Printer.new }.not_to raise_error
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
      account = double('account', :balance => 2500, :transactions => transaction_log)
      statement =
      "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00 \n13/01/2012 || 2000.00 || || 3000.00 \n10/01/2012 || 1000.00 || || 1000.00 "
      expect(Printer.display_statement(account)).to eql(statement)
    end

  end

end
