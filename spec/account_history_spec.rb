require 'account_history'

describe AccountHistory do

  subject(:account_history) { described_class.new }

  describe '#add_transaction' do
    it 'adds a transaction to the log' do
      allow(Time).to receive_message_chain(:now, :strftime) { "10/01/2012" }
      transaction_log = [
        {
          date: "10/01/2012",
          credit: 1000,
          debit: 0,
          balance: 1000
        }
      ]
      account_history.add_transaction(credit: 1000, balance: 1000)
      expect(account_history.transactions).to eql(transaction_log)
    end

  end

end
