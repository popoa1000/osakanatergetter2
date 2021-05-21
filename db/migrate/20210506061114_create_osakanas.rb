class CreateOsakanas < ActiveRecord::Migration[6.0]
  def change
    create_table :osakanas do |t|
      t.string :fish,         null:false, default: ""
      t.text :tackle,         null:false
      t.text :details
      t.references :user,     null:false, foreign_key: true
      t.references :spot, foreign_key: true

      t.timestamps
    end
  end
end
