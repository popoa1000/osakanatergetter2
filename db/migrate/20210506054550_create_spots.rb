class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|

      t.text :title,         null:false
      t.float :latitude,     null:false
      t.float :longitude,    null:false
      #t.references :osakana, null:false, foreign_key: true
      t.timestamps
    end
  end
end
