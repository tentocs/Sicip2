class CreateInvestigationProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :investigation_projects do |t|
      t.references :investigator, foreign_key: true
      t.references :project, foreign_key: true
      t.string :investigator_type

      t.timestamps
    end
  end
end
