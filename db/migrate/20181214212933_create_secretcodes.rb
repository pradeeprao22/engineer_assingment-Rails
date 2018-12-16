class CreateSecretcodes < ActiveRecord::Migration[5.2]
  def change
    create_table :secretcodes do |t|
      t.string :code

      t.timestamps
    end
  end
end
