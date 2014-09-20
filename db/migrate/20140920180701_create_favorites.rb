class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :isCurrent

      t.timestamps
    end
  end
end
