class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :link
      t.references :user, index: true
      t.references :topic, index: true

      t.timestamps
    end
  end
end
