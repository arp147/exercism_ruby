class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < NameError; end
  
  def self.calculate(first_operand, second_operand, operation)
    if !first_operand.is_a?(Numeric) or !second_operand.is_a?(Numeric)
      raise ArgumentError
    end

    case operation
    when "+"
      "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when "/"
      begin
        if second_operand == 0
          raise ZeroDivisionError.new("Division by zero is not allowed.")
        end
        
        "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      rescue ZeroDivisionError => e
        e.message
      end
    when "*"
        "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    else
      raise UnsupportedOperation
    end
  end
end
