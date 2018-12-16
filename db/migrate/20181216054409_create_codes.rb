class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :secretcode
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :secretcodes, [:user_id, :created_at]
  end
end
