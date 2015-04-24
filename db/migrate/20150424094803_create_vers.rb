class CreateVers < ActiveRecord::Migration
  def change
    create_table :vers do |t|
      t.string :chapter
      t.string :test

      t.timestamps null: false
    end
  end
end
