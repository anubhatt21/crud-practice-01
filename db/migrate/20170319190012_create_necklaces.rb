class CreateNecklaces < ActiveRecord::Migration[5.0]
  def change
    create_table :necklaces do |t|
      t.string :name
      t.string :string
      t.string :description
      t.string :string
      t.string :image
      t.string :string
      t.string :price
      t.string :integer

      t.timestamps
    end
  end
end
