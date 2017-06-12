class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :surName
      t.integer :mrn
      t.date :dob
      t.string :dx
      t.string :allergies
      t.string :consultant
      t.string :ward
      t.text :admitNote
      t.string :rad1
      t.string :rad2
      t.string :rad3
      t.string :rad4
      t.string :ex1
      t.string :ex2
      t.string :ex3
      t.string :ex4

      t.timestamps
    end
  end
end
