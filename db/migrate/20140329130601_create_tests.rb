class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :test
      t.integer :test1

      t.timestamps
    end
  end
end
