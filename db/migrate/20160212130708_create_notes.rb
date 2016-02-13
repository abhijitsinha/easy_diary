class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string     :title
      t.text       :content
      t.datetime   :publish_date
      t.boolean    :archived
      t.belongs_to :user, index: true
      t.belongs_to :notebook, index: true

      t.timestamps null: false
    end
  end
end
