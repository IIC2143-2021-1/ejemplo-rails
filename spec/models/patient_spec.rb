require 'rails_helper'

RSpec.describe Patient, type: :model do
  context 'when accessing a Patient' do
    describe 'full_name method' do
      it 'returns the name' do
        patient = Patient.create(name: 'New name', last_name: 'new last name') 
        expect(patient.full_name).to(include('New name'))
      end

      it 'returns the last name' do
        patient = Patient.create(name: 'New name', last_name: 'new last name') 
        expect(patient.full_name).to(include('new last name'))
      end
    end  
  end
end

