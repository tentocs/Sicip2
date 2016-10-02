class CreateInvestigationAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :investigation_areas do |t|
      t.string :description

      t.timestamps
    end
  end
end
