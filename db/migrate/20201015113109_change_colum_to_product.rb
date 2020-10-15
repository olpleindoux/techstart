class ChangeColumToProduct < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :descritption, :description
  end
end
