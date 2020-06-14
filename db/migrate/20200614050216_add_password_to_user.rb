class AddPasswordToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :encrypted_password, :string, null: false, default: ""
  end
end
