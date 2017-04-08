class CreateManufacturers < ActiveRecord::Migration[5.0]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.text :address
      t.text :description
      t.string :contact_person
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
