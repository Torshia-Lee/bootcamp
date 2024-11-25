class CreateDonations < ActiveRecord::Migration[7.2]
  def change
    create_table :donations do |t|
      t.decimal :amount
      t.boolean :recurring

      t.timestamps
    end
  end
end
