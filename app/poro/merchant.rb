class Merchant 
  attr_reader :id, :name

  def initialize(data)
    # require 'pry'; binding.pry
    @id = data[0][:id]
    @name = data[0][:attributes][:name]
  end
end