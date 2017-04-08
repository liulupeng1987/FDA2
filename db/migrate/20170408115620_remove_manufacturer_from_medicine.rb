class RemoveManufacturerFromMedicine < ActiveRecord::Migration[5.0]
  def change
    remove_column :medicines, :manufacturer
  end
end
