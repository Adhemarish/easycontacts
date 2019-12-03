class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string :title
      t.date :datetime
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
