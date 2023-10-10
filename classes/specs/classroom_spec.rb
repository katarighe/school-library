require 'rspec'
require_relative '../classroom'

describe Classroom do
  let(:classroom) { Classroom.new('label') }

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
end
