class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.integer :total
      t.references :record, null: false, foreign_key: true

      t.timestamps
    end
  end
end
