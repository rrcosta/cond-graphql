class AddAccountToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_reference :organizations, :account, foreign_key: true
  end
end
