class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :lg_img
      t.string :med_img
      t.string :rating
      t.string :tags

      t.timestamps
    end
  end
end
