class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fullname, :string
    add_column :users, :dni, :integer
  end
end
