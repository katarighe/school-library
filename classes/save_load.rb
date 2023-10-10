require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'person'
require 'json'

module SaveLoad
  def save_books
    File.write('classes/books.json', '')
    @books.each do |book|
      json = JSON.generate({ title: book.title, author: book.author })
      File.write('classes/books.json', "#{json}\n", mode: 'a')
    end
  end

  def save_people
    File.write('classes/people.json', '')
    @people.each do |person|
      json = if person.is_a?(Student)
               JSON.generate({ type: person.class, id: person.id, name: person.name, age: person.age,
                               parent_permission: person.parent_permission })
             else
               JSON.generate({ type: person.class, id: person.id, name: person.name, age: person.age,
                               specialization: person.specialization })
             end
      File.write('classes/people.json', "#{json}\n", mode: 'a')
    end
  end

  def save_rentals
    File.write('classes/rentals.json', '')
    @rentals.each do |rental|
      json = JSON.generate({ date: rental.date, person: @people.index(rental.person), book: @books.index(rental.book) })
      File.write('classes/rentals.json', "#{json}\n", mode: 'a')
    end
  end

    def save_data
      save_books unless File.exist?('classes/books.json')
      save_people unless File.exist?('classes/people.json')
      save_rentals unless File.exist?('classes/rentals.json')
    end

    def load_books
      return unless File.exist?('classes/books.json')
    
      File.foreach('classes/books.json') do |line|
        element = JSON.parse(line)
        new_book = Book.new(element['title'], element['author'])
        @books.push(new_book)
      end
    end
    
    def load_people
      return unless File.exist?('classes/people.json')
    
      File.foreach('classes/people.json') do |line|
        element = JSON.parse(line)
        if element['type'] == 'Student'
          new_student = Student.new(id: element['id'], classroom: 'Unknown', age: element['age'], name: element['name'],
                                    parent_permission: element['parent_permission'])
          @people.push(new_student)
        else
          new_teacher = Teacher.new(id: element['id'], age: element['age'], specialization: element['specialization'],
                                    name: element['name'])
          @people.push(new_teacher)
        end
      end
    end
    
    def load_rentals
      return unless File.exist?('classes/rentals.json')
    
      File.foreach('classes/rentals.json') do |line|
        element = JSON.parse(line)
        new_rental = Rental.new(element['date'], @people[element['person']], @books[element['book']])
        @rentals.push(new_rental)
      end
    end

  def load_data
    load_books
    load_people
    load_rentals
  end
end
