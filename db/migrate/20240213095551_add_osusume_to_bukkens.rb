class AddOsusumeToBukkens < ActiveRecord::Migration[6.1]
  def change
    add_column :bukkens, :osusume, :integer
  end
end
