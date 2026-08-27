module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0,4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    carry = (ship_identifier.to_s)[0,3]
    if carry == "OIL" or carry == "GAS"
      :A
    else
      :B
    end
  end
end
