class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :caption
      t.string :title
      t.integer :love

      t.timestamps
    end
  end
end
