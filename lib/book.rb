
class Book < Product
  attr_reader :author, :title, :genre

  def initialize(params)
    super
    @author = params[:author]
    @title = params[:title]
    @genre = params[:genre]
  end

  def to_s
    "Название книги: #{@title}, Автор: #{@author}, Жанр: #{@genre}, #{super}"
  end
end