class RemoveColorSchemeFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :color_scheme, :string
  end
end
