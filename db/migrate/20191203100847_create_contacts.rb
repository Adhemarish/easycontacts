class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_card
      t.string :email
      t.string :phone_number
      t.string :company
      t.string :job
      t.string :location
      t.string :avatar
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
