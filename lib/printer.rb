class Printer

  def self.display_statement(account)
    statement = [header]
    account.transactions.reverse_each do |transaction|
      statement.push(to_string(transaction))
    end
    statement.join("\n")
  end

  def self.header
    "date || credit || debit || balance"
  end

  def self.to_string(hash)
    array = hash.map do |_key, value|
      if value === 0
        " "
      elsif value.kind_of? Integer
        " " + '%.2f' % value + " "
      else
        value + " "
      end
    end
    array.join("||")
  end

end
