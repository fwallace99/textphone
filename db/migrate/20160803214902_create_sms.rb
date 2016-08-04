class CreateSms < ActiveRecord::Migration[5.0]
  def change
    create_table :sms do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :sms, [:user_id, :created_at]
  end
end
