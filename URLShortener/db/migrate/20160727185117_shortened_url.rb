class ShortenedUrl < ActiveRecord::Migration
  def create_table :shortened_urls do |t|
    t.string :short_url, null: false, unique: true
    t.string :long_url, null: false
    t.integer :submitter_id, null: false
  end

  #option 1
  add_index :shortened_urls, :short_url, unique: true
  add_index :shortened_urls, :submitter_id
  #maybe
  add_index :shortened_urls, [:submitter_id, :long_url], unique: true

  #option 2: hanlde short URL uniqueness at the model level
  #this would allow us to reuse short_url for user/long_URL pairs
  #that have the same long_URL 
  add_index :shortened_urls, :short_url
  add_index :shortened_urls, :submitter_id
  add_index :shortened_urls, :long_url


end
