class CreateVaccinations < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccinations do |t|
      t.belongs_to :patient, index: true
      t.integer :vaccine
      t.datetime :appointment_date
      t.boolean :first_dose
      t.timestamps
    end
  end
end
