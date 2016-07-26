class AddPhoneTypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_type, :integer
  end
end
