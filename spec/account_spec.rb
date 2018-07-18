require 'account'

describe Account do

  subject(:account) { described_class.new(account_history) }
  let(:account_history) { spy }

  describe '#deposit' do
    it 'adds a sum to the account balance' do
      account.deposit(1000)
      expect(account.balance).to eql(1000)
    end

    it 'adds a transaction to the log' do
      account.deposit(1000)
      expect(account_history).to have_received(:add_transaction).once
    end

  end

  describe '#withdraw' do

    before(:each) do
      account.deposit(1000)
    end

    it 'deducts a sum from the account balance' do
      account.withdraw(500)
      expect(account.balance).to eql(500)
    end

    it 'adds a transaction to the log' do
      account.withdraw(500)
      expect(account_history).to have_received(:add_transaction).twice
    end

  end

end
