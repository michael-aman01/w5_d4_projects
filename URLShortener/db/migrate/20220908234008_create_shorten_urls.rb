class CreateShortenUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shorten_urls do |t|
      t.string "long_url", null: false, index: true, unique: true
      t.string "short_url", null: false
      t.integer "user_id", null: false, index: true
      t.timestamps
    end
  end
end
