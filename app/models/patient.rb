class Patient < ApplicationRecord
  def full_name
    "#{name} #{last_name}"
  end

  def age
    ((Time.zone.now - birth_date.to_time) / 1.year.seconds).floor
  end
end
