class CreateUsearches < ActiveRecord::Migration[5.0]
  def change
    create_table :usearches do |t|
      t.string :uquery
      t.integer :user_id

      t.timestamps
    end
  end
end
