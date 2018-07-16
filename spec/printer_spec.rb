require 'printer'

describe Printer do

  context 'default #initialization' do
    it 'can create a new printer object' do
      expect { Printer.new }.not_to raise_error
    end
  end

end
