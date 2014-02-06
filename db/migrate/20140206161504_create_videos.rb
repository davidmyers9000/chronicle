class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	
      t.belongs_to :topic
      t.string     :source
      t.string     :title
      t.string     :description

      t.timestamps
    end
  end
end
