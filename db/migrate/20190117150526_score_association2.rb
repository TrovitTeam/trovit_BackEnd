class ScoreAssociation2 < ActiveRecord::Migration[5.0]
  def change
    change_table :product_scores do |t|      
      t.belongs_to :distributor, index: true
    end
  end
end
