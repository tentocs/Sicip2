class CreateProjectAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :project_areas do |t|
      t.references :project, foreign_key: true
      t.references :investigation_area, foreign_key: true

      t.timestamps
    end
  end
end
