
class Book < Product
  attr_accessor :author, :title, :genre

  def initialize(params)
    super
    @author = params[:author]
    @title = params[:title]
    @genre = params[:genre]
  end

  def to_s
    "Название книги: #{@title}, Автор: #{@author}, Жанр: #{@genre}, #{super}"
  end

  def self.from_file(path)
    lines = File.readlines(path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      title: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def update(params)
    super
    @author = params[:author] if params[:author]
    @title = params[:title] if params[:title]
    @genre = params[:genre] if params[:genre]
  end
end