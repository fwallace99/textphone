class Removeinteger < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :integer, :string
  end
end
