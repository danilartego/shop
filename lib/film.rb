
class Film < Product
  attr_accessor :title, :year, :producer

  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @producer = params[:producer]
  end

  def to_s
    "Фильм: #{@title}, Год: #{@year}, Режисер: #{@producer}, #{super})"
  end

  def update(params)
    super
    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @producer = params[:producer] if params[:producer]
  end
  end
