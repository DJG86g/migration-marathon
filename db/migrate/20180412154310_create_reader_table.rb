class CreateReaderTable < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :phone_number
    end
  end
end
