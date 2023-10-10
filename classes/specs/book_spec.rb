require 'rspec'
require_relative '../book'
require_relative '../rental'

describe Book do
  let(:book) { Book.new('Title', 'Author') }

  context 'Initialization' do
    it 'should initialize with a title' do
      expect(book.title).to eq('Title')
    end

    it 'should initialize with an author' do
      expect(book.author).to eq('Author')
    end

    it 'should initialize with an empty rentals array' do
      expect(book.rentals).to be_empty
    end
  end

  context 'Attribute Accessors' do
    it 'should allow updating the title' do
      book.title = 'New Title'
      expect(book.title).to eq('New Title')
    end

    it 'should allow updating the author' do
      book.author = 'New Author'
      expect(book.author).to eq('New Author')
    end
  end

  # context 'add_rental method' do
  #   it 'should add a rental to the rentals array' do
  #     person = double('Person')
  #     date = '2023-10-09'
  #     rental = book.add_rental(date, person)
  #     expect(book.rentals).to include(rental)
  #   end

  #   it 'should create a new Rental object' do
  #     person = double('Person')
  #     date = '2023-10-09'
  #     rental = book.add_rental(date, person)
  #     expect(rental).to be_an_instance_of(Rental)
  #     expect(rental.book).to eq(book)
  #     expect(rental.person).to eq(person)
  #     expect(rental.date).to eq(date)
  #   end
  # end
end
