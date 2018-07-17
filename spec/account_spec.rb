require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe '#deposit' do
    it 'adds a sum to the account balance' do
      account.deposit(1000, "10/01/2012")
      expect(account.balance).to eql(1000)
    end

    it 'adds a transaction to the log' do
      amount = 1000
      date = "10/01/2012"
      type = :deposit
      balance = 1000
      account_history = double('account_history', :amount => amount, :date => date, :type => type, :balance => balance)
      account.deposit(1000, "10/01/2012")
      transaction_log = [
        {
          date: "10/01/2012",
          credit: 1000,
          debit: 0,
          balance: 1000
        }
      ]
      allow(account_history).to receive(:add_transaction).once.and_return(transaction_log)
      expect(account.account_history.transactions).to eql(transaction_log)
    end

  end

  describe '#withdraw' do

    before(:each) do
      account.deposit(1000, "10/01/2012")
    end

    it 'deducts a sum from the account balance' do
      account.withdraw(500, "14/01/2012")
      expect(account.balance).to eql(500)
    end

    it 'adds a transaction to the log' do
      amount = 500
      date = "14/01/2012"
      type = :withdraw
      balance = 500
      account_history = double('account_history', :amount => amount, :date => date, :type => type, :balance => balance)
      account.withdraw(500, "14/01/2012")
      transaction_log = [
        { date: "10/01/2012",
          credit: 1000,
          debit: 0,
          balance: 1000
        },
        { date: "14/01/2012",
          credit: 0,
          debit: 500,
          balance: 500
        },
      ]
      allow(account_history).to receive(:add_transaction).once.and_return(transaction_log)
      expect(account.account_history.transactions).to eql(transaction_log)
    end

  end

end
