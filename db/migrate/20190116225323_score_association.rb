class ScoreAssociation < ActiveRecord::Migration[5.0]
  def change

    change_table :product_scores do |t|
      
      t.belongs_to :product, index: true 
      t.belongs_to :business_manager, index: true
    end
  end
end
