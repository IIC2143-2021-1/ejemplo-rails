class Vaccination < ApplicationRecord
  enum vaccine: { phizer: 0, sinovac: 1 }
  belongs_to :patient
end
