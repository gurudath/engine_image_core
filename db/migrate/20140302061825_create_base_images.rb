class CreateBaseImages < ActiveRecord::Migration
  def change
    create_table :base_images do |t|
      t.string :name
      t.integer :entity_id
      t.string :entity_type
      t.string :caption
      t.text :description
      t.string :image_path

      t.timestamps
    end
  end
end
