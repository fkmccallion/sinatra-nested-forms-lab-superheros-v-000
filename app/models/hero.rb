class Hero

  attr_accessor :name, :power, :bio

  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
  end

end