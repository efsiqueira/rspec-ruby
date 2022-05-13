class Contador
  @quantity = 0
  def self.quantity
    @quantity
  end

  def self.increment
    @quantity += 1
  end
end