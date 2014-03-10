class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :imagable, polymorphic: true

      t.timestamps
    end
  end
end
