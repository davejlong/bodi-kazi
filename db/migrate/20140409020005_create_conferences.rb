class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :when
      t.string :where

      t.timestamps
    end
  end
end
