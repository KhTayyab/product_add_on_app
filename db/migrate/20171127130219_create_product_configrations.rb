class CreateProductConfigrations < ActiveRecord::Migration[5.0]
  def change
    create_table :product_configrations do |t|
      t.string :product_name
      t.string :product_sku
      t.string :option_count
      t.string :shop_name
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :option5
      t.string :option6
      t.string :option7
      t.string :option8
      t.string :option9
      t.string :option10

      t.timestamps
    end
  end
end
