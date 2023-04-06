class Merchant 
  attr_accessor :id, :name

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
  end
end