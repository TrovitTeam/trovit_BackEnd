class CreateProductScores < ActiveRecord::Migration[5.0]
  def change
    create_table :product_scores do |t|
      t.float :score 
      t.timestamps
    end
  end
end
