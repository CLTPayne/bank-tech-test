require 'account'

describe Account do

  subject(:account) { described_class.new }

  context 'default #initialization' do
    it 'can create an accout' do
      expect { Account.new }.not_to raise_error
    end
  end

  describe '#deposit' do
    it 'adds a sum to the account balance' do
      account.deposit(1000, "10/01/2012")
      expect(account.balance).to eql(1000)
    end

    it 'adds a transaction to the log' do
      account.deposit(1000, "10/01/2012")
      transaction_log = [
        { date: "10/01/2012",
          credit: 1000,
          debit: 0,
          balance: 1000
        }
      ]
      expect(account.transactions).to eql(transaction_log)
    end

  end
  
end
