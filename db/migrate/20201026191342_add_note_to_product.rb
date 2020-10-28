class AddNoteToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :note, :integer
  end
end
