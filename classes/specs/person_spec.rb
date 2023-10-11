require 'rspec'
require_relative '../person'

describe Person do
  let(:person) { Person.new(14, 'Okari') }

  context 'using services' do
    it 'returns true if the person is of age' do
      person = Person.new(14)
      expect(person.can_use_services?).to be true
    end

    it 'returns true if the person has parent permission' do
      person = Person.new(16, parent_permission: true)
      expect(person.can_use_services?).to be true
    end

    it 'returns false if the person is not of age and does not have parent permission' do
      person = Person.new(16, parent_permission: false)
      expect(person.can_use_services?).to be false
    end
  end

  context 'correct name' do
    it 'returns the actual name' do
      person = Person.new(14, 'Okari')
      expect(person.correct_name).to eq 'Okari'
    end
  end
end
