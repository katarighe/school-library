require_relative 'student'
require_relative 'classroom'
require_relative 'rental'
require_relative 'book'

student1 = Student.new('Unknown', 13, 'Mohamed Aden')
student2 = Student.new('Unknown', 17, 'Mark Adams')

class1 = Classroom.new('Literature')

class1.add_student(student1)
student1.classroom.label
student2.classroom
class1.students.count
student2.classroom = class1
class1.students.count

book1 = Book.new('First Class Travellers', 'Author1')
book2 = Book.new('Flying Home', 'Author2')

book1.rentals
book2.rentals

Rental.new('2017-12-07', book1, student1)
Rental.new('2018-03-07', book2, student2)
Rental.new('2019-08-07', book2, student1)

puts student1.rentals.count
puts student2.rentals.count
puts book1.rentals.count
puts book2.rentals.count
