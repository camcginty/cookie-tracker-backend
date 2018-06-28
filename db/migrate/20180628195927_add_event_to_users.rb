class AddEventToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :event, :string
  end
end
