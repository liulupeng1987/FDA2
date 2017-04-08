class AddFactorynameToMedicine < ActiveRecord::Migration[5.0]
  def change
    add_column :medicines, :factoryname, :string
  end
end
