class CreateEvaluators < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluators do |t|
      t.string :ci
      t.string :name
      t.string :lastname
      t.string :address
      t.string :email
      t.string :phone
      t.string :department
      t.string :specialty
      t.string :academic_degree
      t.date :registration_date
      t.string :position

      t.timestamps
    end
  end
end
