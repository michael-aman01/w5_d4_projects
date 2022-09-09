class CreateShortenUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shorten_urls do |t|
      t.string "long_url", null: false
      t.string "short_url", null: false
      t.integer "user_id", null: false 
      t.index["user_id"], name: "index_short_url_on_user_id"
      t.timestamps
    end
  end
end
