class AddCookieIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :cookie_id, :string
  end
end
