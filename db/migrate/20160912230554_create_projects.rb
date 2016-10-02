class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :responsible
      t.string :co_respondible
      t.string :title
      t.references :category, foreign_key: true
      t.string :deanery
      t.references :investigation_area, foreign_key: true
      t.string :investigation_line
      t.references :research_unit, foreign_key: true
      t.integer :duration
      t.string :academic_information
      t.string :administrative_information
      t.references :state, foreign_key: true
      t.date :approval_date
      t.date :registration_date

      t.timestamps
    end
  end
end
