require 'rspec'
require_relative '../teacher'

describe Teacher do
  let(:teacher) { Teacher.new('Math', 40, 'John Doe') }

  context 'initialized with data' do
    it 'should inherit age, name, and parent_permission from Person' do
      expect(teacher.age).to eq(40)
      expect(teacher.name).to eq('John Doe')
      expect(teacher.parent_permission).to be(true)
    end

    it 'should have a specialization' do
      expect(teacher.specialization).to eq('Math')
    end
  end

  context 'using services' do
    it 'can use services' do
      expect(teacher.can_use_services?).to be(true)
    end
  end
end
