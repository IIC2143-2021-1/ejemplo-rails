class CreateMedicalCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_centers do |t|
      t.string :name
      t.string :city
      t.string :commune
      t.string :address
      t.timestamps
    end
  end
end
