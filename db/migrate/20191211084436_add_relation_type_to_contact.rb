class AddRelationTypeToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :relation_type, :string
  end
end
