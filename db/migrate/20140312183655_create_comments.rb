class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :source
      t.string :text
      t.references :user, index: true
      t.references :video, index: true

      t.timestamps
    end
  end
end
