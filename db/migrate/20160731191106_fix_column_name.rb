class FixColumnName < ActiveRecord::Migration[5.0]
  
    def self.up
    rename_column :users, :encrypted_password, :password
  

  def self.down
    rename_column :users, :password, :encrypted_password
  end
  end
end
