class CreateMedicines < ActiveRecord::Migration[5.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :strength
      t.string :dosage_form
      t.string :approval_number
      t.date :approval_date
      t.string :category
      t.string :manufacturer
      t.integer :manufacturer_id
      t.float :price

      t.timestamps
    end
  end
end
