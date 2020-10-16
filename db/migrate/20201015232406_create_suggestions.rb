class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.integer :artist_id
      t.string :artist_suggestion
      t.string :notable_songs
      t.string :description

      t.timestamps
    end
  end
end
