class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.string :description
      t.string :phone_number
      t.string :email
      t.text :notes

      t.timestamps null: false
    end
  end
end
