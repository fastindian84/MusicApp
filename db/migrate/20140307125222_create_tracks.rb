class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :genre
      t.date :release_date
      t.references :album, index: true

      t.timestamps
    end
  end
end
