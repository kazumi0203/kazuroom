class AddDetailsToBukkens < ActiveRecord::Migration[6.1]
  def change
    add_column :bukkens, :lat, :float
    add_column :bukkens, :lng, :float
  end
end
