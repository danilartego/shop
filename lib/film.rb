
class Film < Product
  attr_accessor :title, :year, :producer

  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @producer = params[:producer]
  end

  def to_s
    "Фильм: #{@title}, Год: #{@year}, Режисер: #{@producer}, #{super}"
  end

  def self.from_file(path)
    lines = File.readlines(path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      title: lines[0],
      producer: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def update(params)
    super
    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @producer = params[:producer] if params[:producer]
  end
  end
