class CreateAdscriptions < ActiveRecord::Migration
  def change
    create_table :adscriptions do |t|
      t.integer :cod
      t.string :name

      t.timestamps null: false
    end
  end
end
