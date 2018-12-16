class AddUuidToCode < ActiveRecord::Migration[5.2]
  def change
    add_column :codes, :uuid, :string
  end
end
