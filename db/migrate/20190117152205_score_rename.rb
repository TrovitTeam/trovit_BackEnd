class ScoreRename < ActiveRecord::Migration[5.0]
  def change
      rename_table :product_scores, :scores
  end
end
