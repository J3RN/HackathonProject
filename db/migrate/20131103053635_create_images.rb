class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.integer :loves
      t.attachment :image

      t.timestamps
    end
  end
end
