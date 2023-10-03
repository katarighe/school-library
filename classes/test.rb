require_relative './student'
require_relative './classroom'
require_relative './rental'
require_relative './book'

student1 = Student.new('Unknown', 13, 'Mohamed Aden')
student2 = Student.new('Unknown', 17, 'Mark Adams')

class314 = Classroom.new('314')

class314.add_student(student1)
student1.classroom.label
student2.classroom
class314.students.count
student2.classroom = class314
class314.students.count

book1 = Book.new('First Class Travellers', 'Author1')
book2 = Book.new('Flying Home', 'Author2')

book1.rentals
book2.rentals

rent1 = Rental.new('2017-12-07', student1, book1)
rent2 = Rental.new('2019-03-07', student2, book2)
rent3 = Rental.new('2019-08-07', student1, book2)

student1.rentals.count
student2.rentals.count
book1.rentals.count
book2.rentals.count
