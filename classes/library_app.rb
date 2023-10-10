require_relative 'app'
require_relative 'save_load'

class LibraryApp
  include SaveLoad

  def initialize
    @library = App.new
  end

  def run
    puts 'Welcome to the School Library App!'
    loop do
      show_options
      option = gets.chomp.to_i
      break if option == 7

      call_option(option)
    end
  end

  def show_options
    puts <<~OPTIONS
      Please choose an option by entering a number:
      1 - List of all books
      2 - List of all people
      3 - Create a person
      4 - Create a book
      5 - Create a rental
      6 - List all rentals for a given person id
      7 - Exit
    OPTIONS
  end

  def call_option(option)
    option_lookup = {
      1 => :list_books,
      2 => :list_people,
      3 => :create_person,
      4 => :create_book,
      5 => :create_rental,
      6 => :list_rentals,
      7 => :save_data
    }

    @library.public_send(option_lookup[option])
  end
end
