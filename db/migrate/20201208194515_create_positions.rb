class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :title
      t.string :company_name
      t.string :location
      t.string :description
      t.boolean :applied
      t.datetime :applied_date

      t.timestamps
    end
  end
end
