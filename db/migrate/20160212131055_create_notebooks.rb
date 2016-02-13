class CreateNotebooks < ActiveRecord::Migration
  def change
    create_table :notebooks do |t|
      t.string     :name
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
