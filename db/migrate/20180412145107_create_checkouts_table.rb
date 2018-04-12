class CreateCheckoutsTable < ActiveRecord::Migration
  def change
    create_table(:checkouts) do |table|
      table.integer :book_id, null: false
    end
  end
end
