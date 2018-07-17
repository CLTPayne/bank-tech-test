class Statement

  def self.display_statement(transaction_history)
    statement = [header]
    transaction_history.transactions.reverse_each do |transaction|
      statement.push(line_item(transaction))
    end
    statement.join("\n")
  end

  class << self

    private

    def header
      "date || credit || debit || balance"
    end

    def line_item(transaction)
      transaction_details = transaction.map do |_key, value|
        case value
        when 0
          " "
        when Fixnum
          two_decimal_format(value)
        when String
          space_format(value)
        end
      end
      #   if value === 0
      #     " "
      #   elsif value.kind_of? Integer
      #     two_decimal_format(value)
      #   else
      #     space_format(value)
      #   end
      # end
      transaction_details.join("||")
    end

    def space_format(value)
      value + " "
    end

    def two_decimal_format(value)
      " " + '%.2f' % value + " "
    end

  end

end
