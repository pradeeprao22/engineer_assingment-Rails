class AddSecretcodeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :secret_code, :text
  end
end
