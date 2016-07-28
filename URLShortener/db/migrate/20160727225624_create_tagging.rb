class CreateTagging < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :url_id, null: false
      t.ingeger :tag_topic_id, null: false
      t.timestamps
    end
  end
end
