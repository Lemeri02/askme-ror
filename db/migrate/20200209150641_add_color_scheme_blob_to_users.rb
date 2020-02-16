class AddColorSchemeBlobToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :color_scheme, :blob
  end
end
