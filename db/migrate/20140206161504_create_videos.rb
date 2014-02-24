class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string     :source
      t.string     :title
      t.string     :description
      t.references :topic, index: true

      t.timestamps
    end
  end
end
