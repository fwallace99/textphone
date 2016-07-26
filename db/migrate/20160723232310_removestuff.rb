class Removestuff < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :phonetype, :string
    remove_column :users, :integer, :string
  end
end
