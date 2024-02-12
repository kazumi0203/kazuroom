class CreateBukkens < ActiveRecord::Migration[6.1]
  def change
    create_table :bukkens do |t|
      t.string :name
      t.string :image
      t.string :address
      t.text :about
      t.string :genre

      t.timestamps
    end
  end
end
