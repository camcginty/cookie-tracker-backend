class RemoveCookiesIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :cookie_id_id, :bigint
  end
end
