class Statement

  def self.display_statement(transaction_history)
    statement = [header]
    transaction_history.transactions.reverse_each do |transaction|
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
