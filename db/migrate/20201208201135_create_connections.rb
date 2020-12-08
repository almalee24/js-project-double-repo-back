class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|
      t.datetime :contact_date
      t.string :take_away
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
