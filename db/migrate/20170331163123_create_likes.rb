class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :photo_id
      t.integer :user_id

      t.timestamps

    end
  end
end
