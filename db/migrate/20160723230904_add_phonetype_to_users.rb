class AddPhonetypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phonetype, :string
    add_column :users, :integer, :string
  end
end
