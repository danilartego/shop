if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'

# lib = []

# lib << Film.new(price: 290, amount: 4, producer: 'Люк Бессон', title: '5 Элемент', year: '1998')
# lib << Book.new(price: 400, amount: 10, author: 'Пушкин', title: 'Сказка о Царе Салтане', genre: 'сказки')

# lib.each { |prod| puts prod}

book = Book.new(producer: 'Пушкин', title: 'Сказка о Царе')
book.genre = 'Сказка'
book.price = 450
book.update(price: 440, amount: 33)

film = Film.new(price: 480, producer: 'Люк Бессон', amount: 20)
film.year = '1998'
film.amount = 21
film.update(price: 488, amount: 25, title: '5 Элемент')

puts film
puts book