class CreateActivityPendings < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_pendings do |t|
      t.references :project, foreign_key: true
      t.date :report1
      t.date :report2
      t.date :report3
      t.date :final_report

      t.timestamps
    end
  end
end
