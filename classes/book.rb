class Book
    attr_reader :rentals
    attr_accessor :title, :author

    def initalize(title, author)
        @title = title
        @author = author
        @rentals = []
end