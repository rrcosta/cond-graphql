class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :cnpj, null: false, limit: 14
      t.timestamps
    end
  end
end
