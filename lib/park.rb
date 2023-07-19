class Park
  attr_reader :name, :admission_fee
  
  def initialize(name, admission_fee)
    @name = name
    @admission_fee = admission_fee
  end
end