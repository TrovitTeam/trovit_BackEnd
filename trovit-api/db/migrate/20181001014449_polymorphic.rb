class Polymorphic < ActiveRecord::Migration[5.0]
  def change

    change_table :offers do |t| 
      t.references :offereable , polymorphic: true, index: true
    end

    change_table :orders do |t|
      t.references :ordereable, polymorphic: true, index: true
    end

    change_table :messages do |t|
      t.references :messageable, polymorphic: true, index: true
    end
  end
end
