
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

  def update(params)
    super
    @author = params[:author] if params[:author]
    @title = params[:title] if params[:title]
    @genre = params[:genre] if params[:genre]
  end
end