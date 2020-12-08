class AddColumnToContactPositionConnection < ActiveRecord::Migration[6.0]
  def change
    add_column :positions, :user_id, :integer
    add_column :contacts, :user_id, :integer
    add_column :connections, :user_id, :integer
  end
end
