class CreateStateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :state_projects do |t|
      t.references :project, foreign_key: true
      t.references :state, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
