class AddUserEmailToUsearch < ActiveRecord::Migration[5.0]
  def change
    add_column :usearches, :user_email, :string
  end
end
