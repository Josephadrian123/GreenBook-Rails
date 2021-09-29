class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :media, default: "images/plants/noimg.svg"
      t.text :diary

      t.timestamps
    end
  end
end
