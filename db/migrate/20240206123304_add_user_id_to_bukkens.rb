class AddUserIdToBukkens < ActiveRecord::Migration[6.1]
  def change
    add_column :bukkens, :user_id, :integer
  end
end
