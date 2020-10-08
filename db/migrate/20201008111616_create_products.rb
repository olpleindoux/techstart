class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :descritption
      t.string :url
      t.string :release_date

      t.timestamps
    end
  end
end
