require 'rspec'
require_relative '../classroom'
require_relative '../student'

describe Classroom do
  let(:classroom) { Classroom.new('label') }
  student = Student.new('Math', 15)

  context 'Initialized with data' do
    it 'should initialize classroom with a label' do
      expect(classroom.label).to eq('label')
    end

    it 'should initialize an emppty students array' do
      expect(classroom.students).to be_empty
    end
  end

  context 'attr accesor' do
    it 'label instance can be changed' do
      classroom.label = 'new label'
      expect(classroom.label).to eq('new label')
    end
  end

  # context 'add_student method' do
  #   it 'should add a new student to the student array' do
  #     stud = classroom.add_student(student)
  #     expect(classroom.students).to include(stud)
  #   end
  # end
end
