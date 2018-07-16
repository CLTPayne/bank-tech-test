require 'account'

describe Account do

  subject(:account) { described_class.new }

  context 'default #initialization' do
    it 'can create an accout' do
      expect { Account.new }.not_to raise_error
    end
  end

end
