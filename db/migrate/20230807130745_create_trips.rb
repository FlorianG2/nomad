class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :starting_date
      t.string :ending_date
      t.references :user, null: false, foreign_key: true
      t.references :budget, null: false, foreign_key: true
      t.references :currency, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
