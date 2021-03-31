class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :last_name
      t.string :run
      t.date :birth_date

      t.timestamps
    end
  end
end
