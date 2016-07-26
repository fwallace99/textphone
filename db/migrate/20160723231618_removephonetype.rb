class Removephonetype < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :phonetype, :string
  end
end
