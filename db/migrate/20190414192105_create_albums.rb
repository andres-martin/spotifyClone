class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.references :artist, foreign_key: true
      t.string :name
      t.string :image_url
      t.date :released_at

      t.timestamps
    end
  end
end
