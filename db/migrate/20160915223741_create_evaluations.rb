class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.references :evaluator, foreign_key: true
      t.references :project, foreign_key: true
      t.date :date
      t.text :observation
      t.string :decision
      t.integer :number

      t.timestamps
    end
  end
end
