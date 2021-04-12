require 'rails_helper'

RSpec.describe Patient, type: :model do
  context 'when accessing a Patient' do

    let(:patient) { create(:patient) }

    describe 'full_name method' do
      it 'returns the name' do
        expect(patient.full_name).to(include(patient.name))
      end

      it 'returns the last name' do
        expect(patient.full_name).to(include(patient.last_name))
      end
    end  
  end
end

