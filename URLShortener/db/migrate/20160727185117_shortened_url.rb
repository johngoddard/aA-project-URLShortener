class ShortenedUrl < ActiveRecord::Migration

  def change
    create_table :shortened_urls do |t|
      t.string :short_url, null: false, unique: true
      t.string :long_url, null: false
      t.integer :submitter_id, null: false
      t.timestamps
    end

    add_index :shortened_urls, :short_url, unique: true
    add_index :shortened_urls, :submitter_id
  end

  #option 1
  #maybe
  # add_index :shortened_urls, [:submitter_id, :long_url], unique: true



end
