class CreateCookies < ActiveRecord::Migration[5.1]
  def change
    create_table :cookies do |t|
      t.text :cookieName
      t.integer :amount
      t.integer :distributableUnits

      t.timestamps
    end
  end
end
