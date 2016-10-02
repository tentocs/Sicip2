class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :project, foreign_key: true
      t.string :file
      t.date :date

      t.timestamps
    end
  end
end
