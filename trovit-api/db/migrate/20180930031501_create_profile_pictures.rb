class CreateProfilePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :picture do |t|
      t.string :pictureType

      t.timestamps
    end
  end
end
